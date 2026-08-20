.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 958
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 959
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 960
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/view/ImeFocusController;Z)V
    .registers 2
    .param p0, "controller"    # Landroid/view/ImeFocusController;
    .param p1, "active"    # Z

    .line 1128
    invoke-virtual {p0, p1}, Landroid/view/ImeFocusController;->onInteractiveChanged(Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 964
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_3c6

    .line 1229
    return-void

    .line 1221
    :sswitch_f
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 1222
    :try_start_14
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1223
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    .line 1225
    :cond_25
    monitor-exit v7

    .line 1226
    return-void

    .line 1225
    :catchall_27
    move-exception v0

    monitor-exit v7
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v0

    .line 1182
    :sswitch_2a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [F

    .line 1183
    .local v7, "matrixValues":[F
    iget v8, v2, Landroid/os/Message;->arg1:I

    .line 1184
    .local v8, "bindSequence":I
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v9

    .line 1185
    :try_start_36
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v0, v8, :cond_3e

    .line 1186
    monitor-exit v9

    return-void

    .line 1188
    :cond_3e
    if-eqz v7, :cond_aa

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_49

    goto :goto_aa

    .line 1196
    :cond_49
    new-array v0, v3, [F

    .line 1197
    .local v0, "currentValues":[F
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1198
    invoke-static {v0, v7}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1199
    monitor-exit v9

    return-void

    .line 1201
    :cond_5c
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1203
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    if-eqz v3, :cond_a8

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v3

    if-eqz v3, :cond_a8

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-nez v3, :cond_7c

    goto :goto_a8

    .line 1207
    :cond_7c
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_87

    goto :goto_88

    :cond_87
    move v5, v6

    :goto_88
    move v3, v5

    .line 1209
    .local v3, "isMonitoring":Z
    if-nez v3, :cond_8d

    .line 1210
    monitor-exit v9

    return-void

    .line 1214
    :cond_8d
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorAnchorInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 1215
    invoke-static {v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    .line 1214
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodSessionWrapper;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 1217
    .end local v0    # "currentValues":[F
    .end local v3    # "isMonitoring":Z
    monitor-exit v9

    .line 1218
    return-void

    .line 1205
    .restart local v0    # "currentValues":[F
    :cond_a8
    :goto_a8
    monitor-exit v9

    return-void

    .line 1192
    .end local v0    # "currentValues":[F
    :cond_aa
    :goto_aa
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V

    .line 1193
    monitor-exit v9

    return-void

    .line 1217
    :catchall_b1
    move-exception v0

    monitor-exit v9
    :try_end_b3
    .catchall {:try_start_36 .. :try_end_b3} :catchall_b1

    throw v0

    .line 1092
    .end local v7    # "matrixValues":[F
    .end local v8    # "bindSequence":I
    :sswitch_b4
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1093
    .local v3, "sequence":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 1098
    .local v4, "id":I
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1099
    :try_start_bd
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v0, v3, :cond_c5

    .line 1104
    monitor-exit v5

    return-void

    .line 1106
    :cond_c5
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->clearAccessibilityBindingLocked(I)V

    .line 1107
    monitor-exit v5

    .line 1108
    return-void

    .line 1107
    :catchall_cc
    move-exception v0

    monitor-exit v5
    :try_end_ce
    .catchall {:try_start_bd .. :try_end_ce} :catchall_cc

    throw v0

    .line 1046
    .end local v3    # "sequence":I
    .end local v4    # "id":I
    :sswitch_cf
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1047
    .local v3, "id":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/inputmethod/InputBindResult;

    .line 1052
    .local v4, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 1053
    :try_start_db
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v0, :cond_145

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v5, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v5, :cond_ea

    goto :goto_145

    .line 1065
    :cond_ea
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_132

    .line 1066
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 1068
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 1067
    invoke-static {v0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v0

    .line 1069
    .local v0, "invoker":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v0, :cond_132

    .line 1070
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1071
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v5, :cond_128

    .line 1072
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v5, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v5, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v11, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v12, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v13, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v14, v5, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    goto :goto_132

    .line 1081
    :cond_128
    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    .line 1085
    .end local v0    # "invoker":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    :cond_132
    :goto_132
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v5, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1086
    monitor-exit v7
    :try_end_139
    .catchall {:try_start_db .. :try_end_139} :catchall_180

    .line 1087
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 1089
    return-void

    .line 1054
    :cond_145
    :goto_145
    :try_start_145
    const-string v0, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring onBind: cur seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", given seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_17e

    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v5, :cond_17e

    .line 1057
    iget-object v0, v4, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1059
    :cond_17e
    monitor-exit v7

    return-void

    .line 1086
    :catchall_180
    move-exception v0

    monitor-exit v7
    :try_end_182
    .catchall {:try_start_145 .. :try_end_182} :catchall_180

    throw v0

    .line 1168
    .end local v3    # "id":I
    .end local v4    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_183
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_188

    goto :goto_189

    :cond_188
    move v5, v6

    :goto_189
    move v3, v5

    .line 1169
    .local v3, "fullscreen":Z
    const/4 v4, 0x0

    .line 1170
    .local v4, "ic":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 1171
    :try_start_190
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-eq v0, v3, :cond_1a5

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_1a5

    .line 1172
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    move-object v4, v0

    .line 1173
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v3, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 1175
    :cond_1a5
    monitor-exit v5
    :try_end_1a6
    .catchall {:try_start_190 .. :try_end_1a6} :catchall_1ac

    .line 1176
    if-eqz v4, :cond_1ab

    .line 1177
    invoke-virtual {v4, v3}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->dispatchReportFullscreenMode(Z)V

    .line 1179
    :cond_1ab
    return-void

    .line 1175
    :catchall_1ac
    move-exception v0

    :try_start_1ad
    monitor-exit v5
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    throw v0

    .line 1164
    .end local v3    # "fullscreen":Z
    .end local v4    # "ic":Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
    :sswitch_1af
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 1165
    return-void

    .line 1160
    :sswitch_1b7
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 1161
    return-void

    .line 1156
    :sswitch_1bf
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 1157
    return-void

    .line 1111
    :sswitch_1c9
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1cf

    move v0, v5

    goto :goto_1d0

    :cond_1cf
    move v0, v6

    :goto_1d0
    move v7, v0

    .line 1112
    .local v7, "active":Z
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1d7

    move v0, v5

    goto :goto_1d8

    :cond_1d7
    move v0, v6

    :goto_1d8
    move v8, v0

    .line 1113
    .local v8, "fullscreen":Z
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1e9

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e9

    move v0, v5

    goto :goto_1ea

    :cond_1e9
    move v0, v6

    :goto_1ea
    move v9, v0

    .line 1115
    .local v9, "reportToImeController":Z
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v0, :cond_215

    .line 1117
    const-string v0, "IMM_LC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_SET_ACTIVE active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v11, v11, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_215
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 1120
    :try_start_21a
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v7, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 1121
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v8, v0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 1125
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetFocusController(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeFocusController;

    move-result-object v0

    .line 1126
    .local v0, "controller":Landroid/view/ImeFocusController;
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v11, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v11, :cond_236

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    .line 1127
    .local v4, "rootView":Landroid/view/View;
    :cond_236
    if-eqz v0, :cond_246

    if-eqz v4, :cond_246

    if-eqz v9, :cond_246

    .line 1128
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v7}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;-><init>(Landroid/view/ImeFocusController;Z)V

    invoke-virtual {v4, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1129
    monitor-exit v10

    return-void

    .line 1132
    :cond_246
    if-nez v7, :cond_256

    .line 1136
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v11, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1139
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 1143
    :cond_256
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v5

    .line 1144
    .local v5, "servedView":Landroid/view/View;
    if-eqz v5, :cond_292

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smcanStartInput(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_292

    .line 1145
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v11, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v11, :cond_292

    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v11, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v11

    iget-object v12, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v12}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v12

    .line 1146
    invoke-virtual {v11, v12, v6}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    move-result v6

    if-eqz v6, :cond_292

    .line 1147
    if-eqz v7, :cond_284

    const/16 v3, 0x8

    move v12, v3

    goto :goto_285

    .line 1148
    :cond_284
    move v12, v3

    :goto_285
    nop

    .line 1149
    .local v12, "reason":I
    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v11, v3, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    .line 1152
    .end local v0    # "controller":Landroid/view/ImeFocusController;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "servedView":Landroid/view/View;
    .end local v12    # "reason":I
    :cond_292
    monitor-exit v10

    .line 1153
    return-void

    .line 1152
    :catchall_294
    move-exception v0

    monitor-exit v10
    :try_end_296
    .catchall {:try_start_21a .. :try_end_296} :catchall_294

    throw v0

    .line 1011
    .end local v7    # "active":Z
    .end local v8    # "fullscreen":Z
    .end local v9    # "reportToImeController":Z
    :sswitch_297
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1013
    .local v3, "sequence":I
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 1019
    .local v4, "reason":I
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 1020
    :try_start_2a0
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v0, v3, :cond_2a8

    .line 1021
    monitor-exit v7

    return-void

    .line 1023
    :cond_2a8
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->clearAllAccessibilityBindingLocked()V

    .line 1024
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 1027
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    .line 1028
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_2c4

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_2c4

    .line 1029
    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v5, v6, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1031
    :cond_2c4
    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v5, v5, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    move v0, v5

    .line 1032
    .local v0, "startInput":Z
    monitor-exit v7
    :try_end_2ca
    .catchall {:try_start_2a0 .. :try_end_2ca} :catchall_2e2

    .line 1033
    if-eqz v0, :cond_2e1

    .line 1035
    sget-boolean v5, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v5, :cond_2d7

    .line 1036
    const-string v5, "IMM_LC"

    const-string v6, "MSG_UNBIND startInputInner is called with null IBinder "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_2d7
    iget-object v7, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 1043
    :cond_2e1
    return-void

    .line 1032
    .end local v0    # "startInput":Z
    :catchall_2e2
    move-exception v0

    :try_start_2e3
    monitor-exit v7
    :try_end_2e4
    .catchall {:try_start_2e3 .. :try_end_2e4} :catchall_2e2

    throw v0

    .line 980
    .end local v3    # "sequence":I
    .end local v4    # "reason":I
    :sswitch_2e5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/inputmethod/InputBindResult;

    .line 984
    .local v3, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 985
    :try_start_2ef
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v0, :cond_343

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v0, v5, :cond_2fe

    goto :goto_343

    .line 994
    :cond_2fe
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V

    .line 997
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 998
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 999
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    .line 1000
    invoke-static {v5}, Landroid/view/inputmethod/InputMethodSessionWrapper;->createOrNull(Lcom/android/internal/view/IInputMethodSession;)Landroid/view/inputmethod/InputMethodSessionWrapper;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurrentInputMethodSession(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodSessionWrapper;)V

    .line 1001
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v5, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 1002
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    iput v5, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1003
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputBindResult;->getVirtualDisplayToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmVirtualDisplayToScreenMatrix(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)V

    .line 1004
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v5, v3, Lcom/android/internal/inputmethod/InputBindResult;->isInputMethodSuppressingSpellChecker:Z

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmIsInputMethodSuppressingSpellChecker(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 1006
    monitor-exit v4
    :try_end_338
    .catchall {:try_start_2ef .. :try_end_338} :catchall_37e

    .line 1007
    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 1008
    return-void

    .line 986
    :cond_343
    :goto_343
    :try_start_343
    const-string v0, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring onBind: cur seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", given seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_37c

    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v5, :cond_37c

    .line 989
    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 991
    :cond_37c
    monitor-exit v4

    return-void

    .line 1006
    :catchall_37e
    move-exception v0

    monitor-exit v4
    :try_end_380
    .catchall {:try_start_343 .. :try_end_380} :catchall_37e

    throw v0

    .line 966
    .end local v3    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    :sswitch_381
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 968
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_386
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/io/FileDescriptor;

    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    iget-object v6, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_397
    .catch Ljava/lang/RuntimeException; {:try_start_386 .. :try_end_397} :catch_398

    .line 972
    goto :goto_3b3

    .line 970
    :catch_398
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3b3
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v4

    .line 974
    :try_start_3b6
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 975
    monitor-exit v4
    :try_end_3be
    .catchall {:try_start_3b6 .. :try_end_3be} :catchall_3c2

    .line 976
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 977
    return-void

    .line 975
    :catchall_3c2
    move-exception v0

    :try_start_3c3
    monitor-exit v4
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3c2

    throw v0

    nop

    :sswitch_data_3c6
    .sparse-switch
        0x1 -> :sswitch_381
        0x2 -> :sswitch_2e5
        0x3 -> :sswitch_297
        0x4 -> :sswitch_1c9
        0x5 -> :sswitch_1bf
        0x6 -> :sswitch_1b7
        0x7 -> :sswitch_1af
        0xa -> :sswitch_183
        0xb -> :sswitch_cf
        0xc -> :sswitch_b4
        0x1e -> :sswitch_2a
        0x1f -> :sswitch_f
    .end sparse-switch
.end method
