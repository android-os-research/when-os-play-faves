.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# static fields
.field private static final greylist-max-o DO_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0xd

.field private static final greylist-max-o DO_ACCESSIBILITY_BUTTON_CLICKED:I = 0xc

.field private static final greylist-max-o DO_CLEAR_ACCESSIBILITY_CACHE:I = 0x5

.field private static final blacklist DO_CREATE_IME_SESSION:I = 0xf

.field private static final greylist-max-o DO_GESTURE_COMPLETE:I = 0x9

.field private static final greylist-max-o DO_INIT:I = 0x1

.field private static final greylist-max-o DO_ON_ACCESSIBILITY_EVENT:I = 0x3

.field private static final greylist-max-o DO_ON_FINGERPRINT_ACTIVE_CHANGED:I = 0xa

.field private static final greylist-max-o DO_ON_FINGERPRINT_GESTURE:I = 0xb

.field private static final greylist-max-o DO_ON_GESTURE:I = 0x4

.field private static final greylist-max-o DO_ON_INTERRUPT:I = 0x2

.field private static final greylist-max-o DO_ON_KEY_EVENT:I = 0x6

.field private static final greylist-max-o DO_ON_MAGNIFICATION_CHANGED:I = 0x7

.field private static final greylist-max-o DO_ON_SOFT_KEYBOARD_SHOW_MODE_CHANGED:I = 0x8

.field private static final blacklist DO_ON_SYSTEM_ACTIONS_CHANGED:I = 0xe

.field private static final blacklist DO_SET_IME_SESSION_ENABLED:I = 0x10

.field private static final blacklist DO_START_INPUT:I = 0x13


# instance fields
.field private final greylist-max-o mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field private final greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private greylist-max-o mConnectionId:I

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2806
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    .line 2788
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2802
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2807
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2808
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 2809
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2810
    return-void
.end method


# virtual methods
.method public blacklist bindInput()V
    .registers 3

    .line 2926
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_b

    .line 2927
    const-string v0, "AccessibilityService"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    :cond_b
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2930
    return-void
.end method

.method public greylist-max-o clearAccessibilityCache()V
    .registers 3

    .line 2837
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2838
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2839
    return-void
.end method

.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 2900
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2901
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2902
    return-void
.end method

.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 2973
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "AccessibilityService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_1ca

    .line 3155
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    return-void

    .line 3138
    :pswitch_24
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_59

    .line 3139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3140
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 3142
    .local v2, "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    .line 3143
    .local v5, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/CancellationGroup;

    .line 3144
    .local v6, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v7, v4, :cond_3d

    move v3, v4

    .line 3145
    .local v3, "restarting":Z
    :cond_3d
    if-nez v2, :cond_40

    goto :goto_45

    .line 3146
    :cond_40
    new-instance v1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-direct {v1, v2, v6}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_45
    nop

    .line 3148
    .local v1, "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 3149
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v4, v1, v5, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3150
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3152
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .end local v2    # "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v3    # "restarting":Z
    .end local v5    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v6    # "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    :cond_59
    return-void

    .line 3130
    :pswitch_5a
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_6a

    .line 3131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 3133
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_67

    move v3, v4

    :cond_67
    invoke-interface {v0, v3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->setEnabled(Z)V

    .line 3135
    .end local v0    # "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    :cond_6a
    return-void

    .line 3122
    :pswitch_6b
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_78

    .line 3123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 3125
    .local v0, "callback":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 3127
    .end local v0    # "callback":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    :cond_78
    return-void

    .line 3116
    :pswitch_79
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_82

    .line 3117
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSystemActionsChanged()V

    .line 3119
    :cond_82
    return-void

    .line 3109
    :pswitch_83
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_92

    .line 3110
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_8c

    move v3, v4

    :cond_8c
    move v0, v3

    .line 3111
    .local v0, "available":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 3113
    .end local v0    # "available":Z
    :cond_92
    return-void

    .line 3103
    :pswitch_93
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_9e

    .line 3104
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonClicked(I)V

    .line 3106
    :cond_9e
    return-void

    .line 3097
    :pswitch_9f
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_aa

    .line 3098
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintGesture(I)V

    .line 3100
    :cond_aa
    return-void

    .line 3091
    :pswitch_ab
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_b9

    .line 3092
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_b6

    move v3, v4

    :cond_b6
    invoke-interface {v0, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintCapturingGesturesChanged(Z)V

    .line 3094
    :cond_b9
    return-void

    .line 3084
    :pswitch_ba
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_cb

    .line 3085
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_c3

    move v3, v4

    :cond_c3
    move v0, v3

    .line 3086
    .local v0, "successfully":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onPerformGestureResult(IZ)V

    .line 3088
    .end local v0    # "successfully":Z
    :cond_cb
    return-void

    .line 3077
    :pswitch_cc
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_d7

    .line 3078
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3079
    .local v0, "showMode":I
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSoftKeyboardShowModeChanged(I)V

    .line 3081
    .end local v0    # "showMode":I
    :cond_d7
    return-void

    .line 3066
    :pswitch_d8
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_f2

    .line 3067
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3068
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Region;

    .line 3069
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/accessibilityservice/MagnificationConfig;

    .line 3070
    .local v2, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3071
    .local v3, "displayId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3072
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v4, v3, v1, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 3074
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local v3    # "displayId":I
    :cond_f2
    return-void

    .line 3042
    :pswitch_f3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3044
    .local v0, "event":Landroid/view/KeyEvent;
    :try_start_f7
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 3045
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 3046
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_111

    .line 3047
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 3048
    .local v2, "result":Z
    iget v3, p1, Landroid/os/Message;->arg1:I
    :try_end_10c
    .catchall {:try_start_f7 .. :try_end_10c} :catchall_118

    .line 3050
    .local v3, "sequence":I
    :try_start_10c
    invoke-interface {v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_10f} :catch_110
    .catchall {:try_start_10c .. :try_end_10f} :catchall_118

    .line 3053
    goto :goto_111

    .line 3051
    :catch_110
    move-exception v4

    .line 3058
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "result":Z
    .end local v3    # "sequence":I
    :cond_111
    :goto_111
    :try_start_111
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V
    :try_end_114
    .catch Ljava/lang/IllegalStateException; {:try_start_111 .. :try_end_114} :catch_115

    .line 3061
    goto :goto_117

    .line 3059
    :catch_115
    move-exception v1

    .line 3062
    nop

    .line 3063
    :goto_117
    return-void

    .line 3057
    :catchall_118
    move-exception v1

    .line 3058
    :try_start_119
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V
    :try_end_11c
    .catch Ljava/lang/IllegalStateException; {:try_start_119 .. :try_end_11c} :catch_11d

    .line 3061
    goto :goto_11e

    .line 3059
    :catch_11d
    move-exception v2

    .line 3062
    :goto_11e
    throw v1

    .line 3038
    .end local v0    # "event":Landroid/view/KeyEvent;
    :pswitch_11f
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3039
    return-void

    .line 3032
    :pswitch_12b
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_138

    .line 3033
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    .line 3035
    :cond_138
    return-void

    .line 2975
    :pswitch_139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 2976
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_142

    move v3, v4

    :cond_142
    move v1, v3

    .line 2977
    .local v1, "serviceWantsEvent":Z
    if-eqz v0, :cond_160

    .line 2979
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2981
    if-eqz v1, :cond_15b

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v2, v5, :cond_15b

    .line 2984
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2988
    :cond_15b
    :try_start_15b
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_15e
    .catch Ljava/lang/IllegalStateException; {:try_start_15b .. :try_end_15e} :catch_15f

    .line 2991
    goto :goto_160

    .line 2989
    :catch_15f
    move-exception v2

    .line 2993
    :cond_160
    :goto_160
    return-void

    .line 2996
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "serviceWantsEvent":Z
    :pswitch_161
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_16a

    .line 2997
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    .line 2999
    :cond_16a
    return-void

    .line 3002
    :pswitch_16b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3003
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3004
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 3006
    .local v3, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    .line 3007
    .local v6, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3008
    if-eqz v3, :cond_1ac

    .line 3009
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v1, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    .line 3011
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_19f

    .line 3013
    :try_start_18e
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAttributionTag(Ljava/lang/String;)V
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_18e .. :try_end_195} :catch_196

    .line 3017
    goto :goto_19f

    .line 3014
    :catch_196
    move-exception v1

    .line 3015
    .local v1, "re":Landroid/os/RemoteException;
    const-string v4, "Error while setting attributionTag"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3019
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_19f
    :goto_19f
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-interface {v1, v2, v6}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 3020
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    goto :goto_1c8

    .line 3022
    :cond_1ac
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3023
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3024
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 3026
    iput v5, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3027
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v5, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 3029
    :goto_1c8
    return-void

    nop

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_16b
        :pswitch_161
        :pswitch_139
        :pswitch_12b
        :pswitch_11f
        :pswitch_f3
        :pswitch_d8
        :pswitch_cc
        :pswitch_ba
        :pswitch_ab
        :pswitch_9f
        :pswitch_93
        :pswitch_83
        :pswitch_79
        :pswitch_6b
        :pswitch_5a
        :pswitch_b
        :pswitch_b
        :pswitch_24
    .end packed-switch
.end method

.method public greylist-max-o init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    .line 2814
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2816
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2817
    return-void
.end method

.method public greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 2888
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2889
    nop

    .line 2888
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2890
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2891
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2882
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2884
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2885
    return-void
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "serviceWantsEvent"    # Z

    .line 2825
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2827
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2828
    return-void
.end method

.method public greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 2872
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2873
    nop

    .line 2872
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2874
    return-void
.end method

.method public greylist-max-o onFingerprintGesture(I)V
    .registers 4
    .param p1, "gesture"    # I

    .line 2877
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2878
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 4
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 2832
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2833
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2834
    return-void
.end method

.method public greylist-max-o onInterrupt()V
    .registers 3

    .line 2820
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2821
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2822
    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    .line 2843
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2844
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2845
    return-void
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 2850
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2851
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2852
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2853
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2855
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2856
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2857
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2958
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2960
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2961
    return-void
.end method

.method public greylist-max-o onPerformGestureResult(IZ)V
    .registers 5
    .param p1, "sequence"    # I
    .param p2, "successfully"    # Z

    .line 2866
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2867
    nop

    .line 2866
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 2868
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2869
    return-void
.end method

.method public greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .registers 4
    .param p1, "showMode"    # I

    .line 2860
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2861
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2862
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2863
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .registers 3

    .line 2895
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2896
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 2965
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;-><init>()V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2967
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2965
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2968
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2969
    return-void
.end method

.method public blacklist setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 8
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 2911
    const-string v0, "AccessibilityService"

    :try_start_2
    move-object v1, p1

    check-cast v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    .line 2912
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;

    move-result-object v1

    .line 2913
    .local v1, "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-nez v1, :cond_22

    .line 2914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is already finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    return-void

    .line 2917
    :cond_22
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x10

    .line 2918
    if-eqz p2, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    .line 2917
    :goto_2b
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_32} :catch_33

    .line 2921
    .end local v1    # "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    goto :goto_4a

    .line 2919
    :catch_33
    move-exception v1

    .line 2920
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2922
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_4a
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 13
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 2946
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_13

    .line 2947
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2950
    :cond_13
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x13

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2951
    const/4 v8, 0x0

    .line 2950
    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    .line 2953
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2954
    return-void
.end method

.method public blacklist unbindInput()V
    .registers 3

    .line 2934
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_b

    .line 2936
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 2937
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_13

    .line 2939
    :cond_b
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :goto_13
    return-void
.end method
