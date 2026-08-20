.class public Lcom/samsung/android/multiwindow/MultiSplitActions;
.super Ljava/lang/Object;
.source "MultiSplitActions.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiSplitActions"


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mHeaderType:I

.field private blacklist mIsChangingHeaderType:Z

.field private blacklist mIsChangingWindowPinState:Z

.field private blacklist mIsDexEnabled:Z

.field private final blacklist mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mWindow:Landroid/view/Window;

.field private blacklist mWindowOpacity:F

.field private blacklist mWindowPinState:I


# direct methods
.method public constructor blacklist <init>(Landroid/view/Window;)V
    .registers 5
    .param p1, "window"    # Landroid/view/Window;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 54
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    .line 60
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    .line 61
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 63
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 64
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 65
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 67
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_45

    .line 68
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    .line 71
    if-eqz v0, :cond_52

    const/4 v0, 0x1

    goto :goto_56

    .line 72
    :cond_52
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result v0

    :goto_56
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 73
    return-void
.end method

.method private blacklist isFoldMainDisplay()Z
    .registers 2

    .line 376
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist back()V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_23

    .line 263
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->injectBackEventForDex(Landroid/os/IBinder;I)Z

    .line 265
    :cond_23
    return-void
.end method

.method public blacklist close()V
    .registers 5

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    const-string v1, "MultiSplitActions"

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2a

    .line 203
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_24

    .line 204
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dismissTaskInSplitScreen(Landroid/os/IBinder;)V

    .line 205
    const-string v0, "close: success, call dismissTaskInSplitScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 207
    :cond_24
    const-string v0, "close: ignore, call dismissTaskInSplitScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 199
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->dispatchOnWindowDismissed(ZZ)V

    .line 200
    const-string v0, "close: success, call dispatchOnWindowDismissed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V

    .line 210
    :goto_3b
    return-void
.end method

.method public blacklist dispatchHeaderTypeChanged(I)V
    .registers 6
    .param p1, "type"    # I

    .line 468
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_24

    .line 469
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 471
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 472
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v0, :cond_19

    .line 473
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/DecorCaptionView;->onHeaderTypeChanged(Z)V

    .line 477
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 478
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_24

    .line 479
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 482
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_24
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 483
    return-void
.end method

.method public blacklist dispatchWindowPinStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 503
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    if-eq v0, p1, :cond_15

    .line 504
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    .line 506
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 507
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v0, :cond_15

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPinned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->onWindowPinStateChanged(Z)V

    .line 511
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    .line 512
    return-void
.end method

.method public blacklist getActivityEmbeddingState()I
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    return v0
.end method

.method public blacklist getDecorView()Lcom/android/internal/policy/DecorView;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getMultiSplitFlags()I
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    return v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getWindow()Landroid/view/Window;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public blacklist getWindowOpacity()F
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    .line 424
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    return v0

    .line 426
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist hasBarFocus()Z
    .registers 4

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    .line 139
    :cond_15
    return v2

    .line 136
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v0

    if-ne v0, v2, :cond_1f

    move v1, v2

    :cond_1f
    return v1

    .line 141
    :cond_20
    return v1
.end method

.method public blacklist hasWindowFocus()Z
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInMultiSplitHandler()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 127
    .local v0, "hasWindowFocus":Z
    :goto_14
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInTask()Z

    move-result v1

    or-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public blacklist initWindowPinState()V
    .registers 2

    .line 524
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    if-nez v0, :cond_17

    .line 525
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 526
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result v0

    .line 525
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchWindowPinStateChanged(I)V

    .line 528
    :cond_17
    return-void
.end method

.method public blacklist isAccessibilityServiceEnabled()Z
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_b

    .line 381
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    goto :goto_c

    .line 385
    :cond_b
    const/4 v0, 0x0

    .line 380
    :goto_c
    return v0
.end method

.method public blacklist isActivity()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isButtonVisible(Landroid/view/View;)Z
    .registers 7
    .param p1, "button"    # Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    .line 146
    .local v0, "windowingMode":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_54

    .line 173
    return v4

    .line 154
    :sswitch_11
    if-ne v0, v2, :cond_22

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeSupported()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    return v4

    .line 159
    :cond_21
    return v3

    .line 161
    :cond_22
    if-ne v0, v4, :cond_25

    move v3, v4

    :cond_25
    return v3

    .line 168
    :sswitch_26
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    move v3, v4

    :cond_2a
    return v3

    .line 170
    :sswitch_2b
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v1

    .line 171
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_3a

    move v3, v4

    :cond_3a
    return v3

    .line 166
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :sswitch_3b
    if-ne v0, v2, :cond_3e

    move v3, v4

    :cond_3e
    return v3

    .line 163
    :sswitch_3f
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v1, :cond_46

    if-ne v0, v2, :cond_46

    move v3, v4

    :cond_46
    return v3

    .line 148
    :sswitch_47
    if-ne v0, v2, :cond_4a

    move v3, v4

    :cond_4a
    return v3

    .line 150
    :sswitch_4b
    if-eq v0, v4, :cond_4e

    move v3, v4

    :cond_4e
    return v3

    .line 152
    :sswitch_4f
    if-eq v0, v2, :cond_52

    move v3, v4

    :cond_52
    return v3

    nop

    :sswitch_data_54
    .sparse-switch
        0x102031d -> :sswitch_4f
        0x10203ed -> :sswitch_4b
        0x1020409 -> :sswitch_47
        0x102046e -> :sswitch_3f
        0x10204a3 -> :sswitch_3b
        0x1020502 -> :sswitch_2b
        0x10205b0 -> :sswitch_26
        0x10205da -> :sswitch_11
    .end sparse-switch
.end method

.method public blacklist isEmbeddedMode()Z
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isEmbedded()Z

    move-result v0

    return v0
.end method

.method public blacklist isFlexPanelRunning()Z
    .registers 2

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFreeformMode()Z
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isFullscreen()Z
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist isHeaderTypeBar()Z
    .registers 3

    .line 486
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isHiddenSystemBarInSplitMode()Z
    .registers 2

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSplitImmersiveModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isHorizontalSplitState()Z
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    .line 352
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_11

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public blacklist isMultiWindowSupported()Z
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_23

    .line 310
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    .line 311
    .local v0, "support":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMultiWindowSupported: support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSplitActions"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v0

    .line 314
    .end local v0    # "support":Z
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNaturalSwitchingEnabled()Z
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPinned()Z
    .registers 3

    .line 515
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isPopupHelpEnabled()Z
    .registers 3

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 546
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    return v0

    .line 547
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 548
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 553
    :cond_1a
    return v1
.end method

.method public blacklist isRestartDialogDisabled()Z
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isDisabledNonResizeableAppRestartDialog()Z

    move-result v0

    return v0
.end method

.method public blacklist isRunning()Z
    .registers 5

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isActivity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 117
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 119
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_24

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    .line 121
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_25
    return v1
.end method

.method public blacklist isSplitMode()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 185
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSplitModeEnabled()Z
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    .line 338
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public blacklist isSplitModeSupported()Z
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 326
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 327
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    .line 330
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_23
    return v1
.end method

.method public blacklist isSplitWindowBottom()Z
    .registers 4

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_25

    .line 361
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    .line 362
    .local v0, "stagePosition":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_24

    .line 363
    const/4 v1, 0x1

    return v1

    .line 365
    :cond_24
    return v1

    .line 358
    .end local v0    # "stagePosition":I
    :cond_25
    :goto_25
    return v1
.end method

.method public blacklist isStashed()Z
    .registers 5

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 102
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 103
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getFreeformStashState()I

    move-result v0

    .line 104
    .local v0, "stashState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1e

    :cond_1d
    move v1, v2

    :cond_1e
    return v1

    .line 107
    .end local v0    # "stashState":I
    :cond_1f
    return v1
.end method

.method public blacklist isWindowPinStateChangeable()Z
    .registers 4

    .line 519
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public blacklist maximize()V
    .registers 6

    .line 222
    const-string v0, "maximize: success, call toggleFreeformWindowingMode"

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFreeformMode()Z

    move-result v1

    const-string v2, "MultiSplitActions"

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    if-eqz v1, :cond_f

    goto :goto_25

    .line 239
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1f

    .line 240
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    .line 241
    const-string v0, "maximize: success, call exitMultiWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 243
    :cond_1f
    const-string v0, "maximize: ignore, call exitMultiWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 223
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_61

    .line 225
    :try_start_29
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 226
    invoke-interface {v1, v3}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 227
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    if-nez v1, :cond_3d

    .line 228
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3d} :catch_44
    .catchall {:try_start_29 .. :try_end_3d} :catchall_42

    .line 233
    :cond_3d
    nop

    :goto_3e
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    goto :goto_66

    .line 233
    :catchall_42
    move-exception v1

    goto :goto_5d

    .line 230
    :catch_44
    move-exception v1

    .line 231
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maximize: Cannot change task workspace. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_42

    .line 233
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_3e

    :goto_5d
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    throw v1

    .line 236
    :cond_61
    const-string v0, "maximize: ignore, call toggleFreeformWindowingMode"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_66
    return-void
.end method

.method public blacklist minimize()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    const-string v1, "MultiSplitActions"

    if-eqz v0, :cond_11

    .line 214
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskByToken(Landroid/os/IBinder;)Z

    .line 215
    const-string v0, "minimize: success, call minimizeTaskByToken"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 217
    :cond_11
    const-string v0, "minimize: ignore, call minimizeTaskByToken"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_16
    return-void
.end method

.method public blacklist moveToFreeform()V
    .registers 6

    .line 268
    const-string v0, "moveToFreeform: success, call toggleFreeformWindowingMode"

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v1

    const-string v2, "MultiSplitActions"

    if-eqz v1, :cond_43

    .line 269
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3d

    .line 271
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 272
    invoke-interface {v1, v3}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_20
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    .line 276
    nop

    :goto_1a
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto :goto_57

    .line 276
    :catchall_1e
    move-exception v1

    goto :goto_39

    .line 273
    :catch_20
    move-exception v1

    .line 274
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToFreeform: Cannot change task workspace. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_1e

    .line 276
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_1a

    :goto_39
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    throw v1

    .line 279
    :cond_3d
    const-string v0, "moveToFreeform: ignore, call toggleFreeformWindowingMode"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 282
    :cond_43
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_52

    .line 283
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveSplitTaskToFreeform(Landroid/os/IBinder;)V

    .line 284
    const-string v0, "moveToFreeform: success, call moveSplitTaskToFreeform"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 286
    :cond_52
    const-string v0, "moveToFreeform: ignore, call moveSplitTaskToFreeform"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_57
    return-void
.end method

.method public blacklist moveToSplit()V
    .registers 5

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isFullscreen()Z

    move-result v0

    const-string v1, "MultiSplitActions"

    if-eqz v0, :cond_13

    .line 293
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->enterSplitScreenTopActivity()V

    .line 294
    const-string v0, "moveToSplit: success, call enterSplitScreenTopActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 296
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_23

    .line 297
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 298
    const-string v0, "moveToSplit: success, call moveFreeformTaskToSplit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 300
    :cond_23
    const-string v0, "moveToSplit: ignore, call moveFreeformTaskToSplit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_28
    return-void
.end method

.method public blacklist release()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    .line 86
    return-void
.end method

.method public blacklist reportPopupHelpSuccess()V
    .registers 3

    .line 570
    const-string v0, "MultiSplitActions"

    const-string/jumbo v1, "reportPopupHelpSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportMultiWindowHandlerHelpShown(I)V

    .line 572
    return-void
.end method

.method public blacklist rotate()V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    const-string v1, "MultiSplitActions"

    if-eqz v0, :cond_2b

    .line 251
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v0}, Landroid/app/IActivityTaskManager;->rotateDexCompatTask(Landroid/os/IBinder;)V

    .line 252
    const-string/jumbo v0, "rotate: success, call rotateDexCompatTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_2a

    .line 253
    :catch_12
    move-exception v0

    .line 254
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rotate: Cannot change task workspace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    goto :goto_31

    .line 257
    :cond_2b
    const-string/jumbo v0, "rotate: ignore, call rotateDexCompatTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_31
    return-void
.end method

.method public blacklist setHeaderType(I)V
    .registers 9
    .param p1, "type"    # I

    .line 430
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    const-string v1, "bar"

    const-string v2, "handler"

    const-string v3, "MultiSplitActions"

    const/4 v4, 0x1

    if-eqz v0, :cond_29

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHeaderType: ignore. Changing header type to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v5, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 436
    :cond_29
    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 438
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result v0

    const/4 v5, 0x0

    if-eq v0, p1, :cond_98

    .line 439
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 440
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 441
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v6, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 443
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 446
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_57
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v6, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setFreeformHeaderType(I)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHeaderType: change to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    iget v6, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v6, v4, :cond_6f

    goto :goto_70

    :cond_6f
    move-object v1, v2

    :goto_70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 451
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-eqz v0, :cond_8c

    .line 452
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v1, v4, :cond_88

    goto :goto_89

    :cond_88
    move v4, v5

    :goto_89
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DecorCaptionView;->onHeaderTypeChanged(Z)V

    .line 456
    :cond_8c
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 457
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_97

    .line 458
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 460
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_97
    goto :goto_b7

    .line 461
    :cond_98
    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingHeaderType:Z

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHeaderType: ignore. already "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    iget v5, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    if-ne v5, v4, :cond_ab

    goto :goto_ac

    :cond_ab
    move-object v1, v2

    :goto_ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_b7
    return-void
.end method

.method public blacklist setPopupHelpDisabled()V
    .registers 3

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPopupHelpEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 561
    const-string v0, "MultiSplitActions"

    const-string/jumbo v1, "setPopupHelpDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->noMoreShowMultiWindowHandlerHelp(I)V

    .line 564
    :cond_19
    return-void
.end method

.method public blacklist setRestartDialogDisabled()V
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->disableNonResizeableAppRestartDialog()V

    .line 532
    return-void
.end method

.method public blacklist setWindowOpacity(F)V
    .registers 5
    .param p1, "opacity"    # F

    .line 405
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_31

    .line 406
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setFreeformAlpha(Landroid/os/IBinder;F)V

    .line 409
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_15

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1d

    :cond_15
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2f

    .line 411
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 412
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_2f

    .line 413
    cmpl-float v1, p1, v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->updateWindowOpacity(Z)V

    .line 418
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_2f
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowOpacity:F

    .line 420
    :cond_31
    return-void
.end method

.method public blacklist showAllApps([I)V
    .registers 4
    .param p1, "buttonPosition"    # [I

    .line 398
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_11

    .line 399
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->showOverlayAllApps(Landroid/os/IBinder;[I)V

    .line 400
    const-string v0, "MultiSplitActions"

    const-string/jumbo v1, "showAllApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_11
    return-void
.end method

.method public blacklist toggleWindowPinState()V
    .registers 5

    .line 490
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_28

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsChangingWindowPinState:Z

    .line 492
    iget v2, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindowPinState:I

    const-string v3, "MultiSplitActions"

    if-ne v2, v1, :cond_1d

    .line 493
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startFreeformTaskPinning(Landroid/os/IBinder;)V

    .line 494
    const-string/jumbo v0, "toggleWindowPinState: change to pinned"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 496
    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->stopFreeformTaskPinning(Landroid/os/IBinder;)V

    .line 497
    const-string/jumbo v0, "toggleWindowPinState: change to unpinned"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_28
    :goto_28
    return-void
.end method

.method public blacklist update()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 77
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mToken:Landroid/os/IBinder;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mIsDexEnabled:Z

    .line 80
    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_2a

    .line 81
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result v0

    :goto_2a
    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitActions;->mHeaderType:I

    .line 82
    return-void
.end method
