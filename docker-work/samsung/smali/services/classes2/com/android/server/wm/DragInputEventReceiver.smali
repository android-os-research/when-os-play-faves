.class public Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mIsStartEvent:Z

.field public mMuteInput:Z

.field public mStylusButtonDownAtStart:Z


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 57
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 11

    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 64
    :try_start_3
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_c1

    .line 65
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_c1

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v2, :cond_15

    goto/16 :goto_c1

    .line 69
    :cond_15
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 70
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 71
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 73
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    const/4 v7, 0x1

    if-eqz v6, :cond_2b

    move v6, v7

    goto :goto_2c

    :cond_2b
    move v6, v1

    .line 75
    :goto_2c
    iget-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v8, :cond_34

    .line 78
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 82
    :cond_34
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_c7
    .catchall {:try_start_3 .. :try_end_38} :catchall_c5

    if-eqz v2, :cond_9b

    const-string v8, ","

    if-eq v2, v7, :cond_7a

    if-eq v2, v3, :cond_53

    const/4 v3, 0x3

    if-eq v2, v3, :cond_47

    .line 121
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    .line 109
    :cond_47
    :try_start_47
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_50

    const-string v2, "Drag cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_50
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_ad

    .line 94
    :cond_53
    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v2, :cond_ad

    if-nez v6, :cond_ad

    .line 95
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_77

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button no longer pressed; dropping at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_77
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_ad

    .line 103
    :cond_7a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_98

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got UP on move channel; dropping at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_98
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_ad

    .line 84
    :cond_9b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_a4

    const-string v2, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_a4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v2, :cond_bd

    .line 87
    iget-object v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->handleDownEvent()V

    .line 116
    :cond_ad
    :goto_ad
    iget-object v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-nez v3, :cond_b5

    move v3, v7

    goto :goto_b6

    :cond_b5
    move v3, v1

    :goto_b6
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_b9} :catch_c7
    .catchall {:try_start_47 .. :try_end_b9} :catchall_c5

    .line 121
    invoke-virtual {p0, p1, v7}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_d0

    :cond_bd
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_c1
    :goto_c1
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_c5
    move-exception v0

    goto :goto_d1

    :catch_c7
    move-exception v2

    :try_start_c8
    const-string v3, "Exception caught by drag handleMotion"

    .line 119
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_c5

    .line 121
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_d0
    return-void

    :goto_d1
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 122
    throw v0
.end method
