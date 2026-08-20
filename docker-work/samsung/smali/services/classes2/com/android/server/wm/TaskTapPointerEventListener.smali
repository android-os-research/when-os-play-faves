.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskTapPointerEventListener"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mNeedsToRestoreDefaultIcon:Z

.field public mPointerIconType:I

.field public final mPointerTouchExcludeRegion:Landroid/graphics/Region;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpExcludeRegion:Landroid/graphics/Region;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public static synthetic $r8$lambda$tgUNhsaQgZrH6iQLuR9ORUQ0aBI(IILcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskTapPointerEventListener;->lambda$onPointerEvent$0(IILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 73
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    .line 78
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public static convertDesktopMouseIcon(I)I
    .registers 2

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_14

    packed-switch p0, :pswitch_data_18

    return p0

    :pswitch_8
    const/16 p0, 0x278c

    return p0

    :pswitch_b
    const/16 p0, 0x278d

    return p0

    :pswitch_e
    const/16 p0, 0x278b

    return p0

    :pswitch_11
    const/16 p0, 0x278a

    return p0

    :cond_14
    const/16 p0, 0x2789

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x3f6
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic lambda$onPointerEvent$0(IILcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 237
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_18

    iget v0, p2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_18

    .line 239
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 13

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    const/16 v1, 0x4002

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/16 v2, 0x2002

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_17

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_17

    :cond_15
    move v5, v3

    goto :goto_1a

    .line 107
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    move v5, v4

    .line 113
    :goto_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_165

    const/4 v2, 0x7

    if-eq v6, v2, :cond_3c

    const/16 v2, 0x9

    if-eq v6, v2, :cond_3c

    const/16 v0, 0xa

    if-eq v6, v0, :cond_2d

    goto/16 :goto_190

    .line 298
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    goto/16 :goto_190

    .line 144
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 147
    monitor-enter p0

    .line 149
    :try_start_47
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 150
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    .line 151
    monitor-exit p0

    goto/16 :goto_190

    .line 153
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_162

    .line 160
    :try_start_54
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2, p1, v5}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_64

    move v5, v4

    goto :goto_65

    :cond_64
    move v5, v3

    :goto_65
    if-eqz v0, :cond_6f

    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_6f

    move v6, v4

    goto :goto_70

    :cond_6f
    move v6, v3

    :goto_70
    if-eqz v0, :cond_77

    .line 168
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_77} :catch_157

    :cond_77
    const/16 v7, 0x3e8

    if-nez v5, :cond_94

    .line 178
    iget-boolean p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    if-nez p1, :cond_83

    iget p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq p1, v4, :cond_90

    .line 179
    :cond_83
    iput-boolean v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    if-eqz v1, :cond_89

    const/16 v7, 0x4e21

    .line 190
    :cond_89
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 192
    :cond_90
    iput v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto/16 :goto_190

    :cond_94
    const/16 v3, 0x3f7

    const/16 v5, 0x3f8

    const/16 v8, 0x3f9

    const/16 v9, 0x3f6

    if-eqz v0, :cond_da

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_da

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, v10, :cond_c2

    .line 204
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v10, :cond_ba

    :goto_b8
    move v0, v8

    goto :goto_db

    .line 205
    :cond_ba
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_c0

    :goto_be
    move v0, v5

    goto :goto_db

    :cond_c0
    move v0, v9

    goto :goto_db

    .line 207
    :cond_c2
    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v10, :cond_d0

    .line 209
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v10, :cond_cb

    goto :goto_be

    .line 210
    :cond_cb
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_c0

    goto :goto_b8

    .line 212
    :cond_d0
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-lt p1, v10, :cond_d8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_da

    :cond_d8
    move v0, v3

    goto :goto_db

    :cond_da
    move v0, v4

    :goto_db
    if-eqz v6, :cond_12e

    if-eqz v1, :cond_f2

    if-ne v0, v9, :cond_e4

    const/16 v0, 0x4e26

    goto :goto_f2

    :cond_e4
    if-ne v0, v3, :cond_e9

    const/16 v0, 0x4e27

    goto :goto_f2

    :cond_e9
    if-ne v0, v8, :cond_ee

    const/16 v0, 0x4e28

    goto :goto_f2

    :cond_ee
    if-ne v0, v5, :cond_f2

    const/16 v0, 0x4e29

    .line 232
    :cond_f2
    :goto_f2
    :try_start_f2
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_fd

    .line 234
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_fe

    :cond_fd
    const/4 v1, 0x0

    :goto_fe
    if-eqz v1, :cond_120

    .line 236
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p1}, Lcom/android/server/wm/TaskTapPointerEventListener$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-nez v3, :cond_121

    .line 240
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8b2

    if-eq v1, v3, :cond_121

    const/16 v3, 0x96b

    if-eq v1, v3, :cond_121

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 243
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v1
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_11d} :catch_123

    if-eqz v1, :cond_120

    goto :goto_121

    :cond_120
    move v7, v0

    :cond_121
    :goto_121
    move v0, v7

    goto :goto_12e

    :catch_123
    move-exception p0

    const-string p1, "TaskTapPointerEventListener"

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_12e
    :goto_12e
    iget v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v1, v0, :cond_190

    .line 285
    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-ne v0, v4, :cond_14d

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_190

    .line 292
    :cond_14d
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_190

    :catch_157
    move-exception p0

    const-string p1, "TaskTapPointerEventListener"

    .line 173
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_162
    move-exception p1

    .line 153
    :try_start_163
    monitor-exit p0
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw p1

    .line 117
    :cond_165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    if-ne v1, v2, :cond_175

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v1

    float-to-int v1, v1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result p1

    goto :goto_17e

    .line 121
    :cond_175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_17e
    float-to-int p1, p1

    .line 125
    monitor-enter p0

    .line 135
    :try_start_180
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-nez v0, :cond_18f

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2, v1, p1, v5}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;IIZ)V

    .line 139
    :cond_18f
    monitor-exit p0

    :cond_190
    :goto_190
    return-void

    :catchall_191
    move-exception p1

    monitor-exit p0
    :try_end_193
    .catchall {:try_start_180 .. :try_end_193} :catchall_191

    throw p1
.end method

.method public final restorePointerIcon(II)V
    .registers 5

    .line 88
    iget v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 89
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1d
    return-void
.end method

.method public final setDefaultPointerIconType(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2789

    if-eq p1, v0, :cond_d

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_d

    goto :goto_10

    :cond_d
    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    :goto_10
    return-void
.end method

.method public setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 307
    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    .line 311
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    .line 316
    monitor-enter p0

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    if-eqz p2, :cond_d

    .line 320
    iget-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 323
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw p1
.end method
