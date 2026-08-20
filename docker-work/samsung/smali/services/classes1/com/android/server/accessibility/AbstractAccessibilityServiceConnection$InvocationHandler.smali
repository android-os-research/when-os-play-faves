.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_BIND_INPUT:I = 0xc

.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field public static final MSG_CREATE_IME_SESSION:I = 0xa

.field public static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field public static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field public static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field public static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6

.field public static final MSG_ON_SYSTEM_ACTIONS_CHANGED:I = 0x9

.field public static final MSG_SET_IME_SESSION_ENABLED:I = 0xb

.field public static final MSG_START_INPUT:I = 0xe

.field public static final MSG_UNBIND_INPUT:I = 0xd


# instance fields
.field public mIsSoftKeyboardCallbackEnabled:Z

.field public final mMagnificationCallbackState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .registers 4

    .line 2104
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2105
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2100
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 2102
    iput-boolean p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method


# virtual methods
.method public bindInputLocked()V
    .registers 2

    const/16 v0, 0xc

    .line 2247
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2248
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public createImeSessionLocked()V
    .registers 2

    const/16 v0, 0xa

    .line 2235
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2236
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 2110
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9b

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ac

    .line 2172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2163
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    .line 2164
    :goto_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2165
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 2167
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    .line 2168
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v0, v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mstartInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2169
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_aa

    .line 2160
    :pswitch_3f
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$munbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto/16 :goto_aa

    .line 2157
    :pswitch_46
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_aa

    .line 2151
    :pswitch_4c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    .line 2152
    :goto_52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2154
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$msetImeSessionEnabledInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    goto :goto_aa

    .line 2148
    :pswitch_5c
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mcreateImeSessionInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_aa

    .line 2144
    :pswitch_62
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifySystemActionsChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_aa

    .line 2140
    :pswitch_68
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v1, v2

    .line 2141
    :goto_6e
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityButtonAvailabilityChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    goto :goto_aa

    .line 2135
    :pswitch_74
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2136
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityButtonClickedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    goto :goto_aa

    .line 2130
    :pswitch_7c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2131
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifySoftKeyboardShowModeChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    goto :goto_aa

    .line 2121
    :pswitch_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2122
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Region;

    .line 2123
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    .line 2124
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2125
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyMagnificationChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 2126
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_aa

    .line 2117
    :cond_9b
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyClearAccessibilityCacheInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    goto :goto_aa

    .line 2113
    :cond_a1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyGestureInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :goto_aa
    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0x5
        :pswitch_84
        :pswitch_7c
        :pswitch_74
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_4c
        :pswitch_46
        :pswitch_3f
        :pswitch_23
    .end packed-switch
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 3

    .line 2205
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2206
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 2207
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 2229
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2231
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 2224
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2225
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6

    .line 2179
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2180
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 2181
    monitor-exit v0

    return-void

    .line 2183
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_23

    .line 2185
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2186
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2187
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2188
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 p1, 0x5

    .line 2190
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2191
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_23
    move-exception p0

    .line 2183
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 4

    .line 2211
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2215
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2216
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 2241
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2243
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 4

    .line 2195
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_f

    .line 2197
    :try_start_7
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    .line 2199
    :cond_f
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2201
    :goto_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2

    .line 2220
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method

.method public startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5

    .line 2259
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2260
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2261
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/4 p1, 0x0

    const/16 p2, 0xe

    .line 2262
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2263
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unbindInputLocked()V
    .registers 2

    const/16 v0, 0xd

    .line 2252
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2253
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
