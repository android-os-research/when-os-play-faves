.class public Lcom/samsung/android/multiwindow/MultiSplitHandler;
.super Landroid/view/View;
.source "MultiSplitHandler.java"


# static fields
.field private static final blacklist DEBUG_LIFECYCLE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "MultiSplitHandler"

.field private static final blacklist TAG_LIFECYCLE:Ljava/lang/String; = "MSHandlerLifeCycle"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mHasWindowFocusForMwHandler:Z

.field private blacklist mIsOverlayHandlerActivated:Z

.field private final blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

.field private final blacklist mWindow:Landroid/view/Window;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 21
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->BUILD_TYPE_ENG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHIP_BUILD:Z

    if-nez v0, :cond_11

    .line 22
    const-string v0, "decorcaption.debug.handler"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    sput-boolean v1, Lcom/samsung/android/multiwindow/MultiSplitHandler;->DEBUG_LIFECYCLE:Z

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/multiwindow/MultiSplitActions;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actions"    # Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    .line 39
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 41
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mWindow:Landroid/view/Window;

    .line 42
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 44
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setFitsSystemWindows(Z)V

    .line 45
    return-void
.end method

.method private blacklist createOverlayHandlerWindow()V
    .registers 8

    .line 109
    const-string v0, "createOverlayHandlerWindow: done. ohv="

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    const-string v2, " decor="

    if-eqz v1, :cond_2b

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOverlayHandlerWindow: already requested. ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 111
    return-void

    .line 114
    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v1

    if-nez v1, :cond_56

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOverlayHandlerWindow: ignore. ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOverlayHandlerWindow: on request. ohv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-nez v1, :cond_119

    .line 124
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_7e
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mContext:Landroid/content/Context;

    const v6, 0x10302e3

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 125
    .local v4, "themedContext":Landroid/content/Context;
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x109016e

    .line 126
    invoke-virtual {v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/OverlayHandlerView;

    iput-object v5, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 127
    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v5, p0, v6}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->createWindow(Lcom/samsung/android/multiwindow/MultiSplitHandler;Lcom/samsung/android/multiwindow/MultiSplitActions;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9c} :catch_c1
    .catchall {:try_start_7e .. :try_end_9c} :catchall_bf

    .line 132
    .end local v4    # "themedContext":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 133
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    .line 134
    goto :goto_119

    .line 132
    :catchall_bf
    move-exception v1

    goto :goto_f6

    .line 128
    :catch_c1
    move-exception v4

    .line 129
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_c2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createOverlayHandlerWindow: fail. ohv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 130
    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;
    :try_end_f0
    .catchall {:try_start_c2 .. :try_end_f0} :catchall_bf

    .line 132
    .end local v4    # "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a1

    :goto_f6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 133
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    .line 134
    throw v1

    .line 136
    :cond_119
    :goto_119
    return-void
.end method

.method public static blacklist logLifeCycle(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 224
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_9

    .line 225
    const-string v0, "MSHandlerLifeCycle"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist hasWindowFocusInMultiSplitHandler()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mHasWindowFocusForMwHandler:Z

    return v0
.end method

.method blacklist isOverlayHandlerActivated()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    return v0
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateWindowInsetsChanged()V

    .line 93
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 60
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->createOverlayHandlerWindow()V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/DecorView;->registerMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V

    .line 63
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 67
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->removeOverlayHandlerWindow()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/DecorView;->unregisterMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V

    .line 70
    return-void
.end method

.method public blacklist onFreeformResizeGuideViewChanged(Z)V
    .registers 3
    .param p1, "showing"    # Z

    .line 218
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 219
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->onFreeformResizeStateChanged(Z)V

    .line 221
    :cond_7
    return-void
.end method

.method public blacklist onFreeformStashingChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateFreeformStashState(I)V

    .line 100
    :cond_7
    return-void
.end method

.method public blacklist onScreenTouched(I)V
    .registers 4
    .param p1, "action"    # I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_11

    .line 185
    packed-switch p1, :pswitch_data_12

    :pswitch_7
    goto :goto_11

    .line 191
    :pswitch_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    goto :goto_11

    .line 187
    :pswitch_d
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->scheduleFadeAnimation(Z)V

    .line 195
    :cond_11
    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist onStatusBarVisibilityChanged()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->onStatusBarVisibilityChanged()V

    .line 215
    :cond_7
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_21

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateWindowFocusChanged()V

    .line 164
    if-nez p1, :cond_21

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isAccessibilityServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 165
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->hidePopup()V

    .line 168
    :cond_21
    return-void
.end method

.method public blacklist onWindowFocusChangedForMultiSplitHandler(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mHasWindowFocusForMwHandler:Z

    if-eq v0, p1, :cond_9

    .line 205
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mHasWindowFocusForMwHandler:Z

    .line 206
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 208
    :cond_9
    return-void
.end method

.method public blacklist onWindowingModeChanged(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateWindowingModeChanged()V

    .line 106
    :cond_7
    return-void
.end method

.method public blacklist removeOverlayHandlerWindow()V
    .registers 8

    .line 139
    const-string/jumbo v0, "removeOverlayHandlerWindow: done. ohv="

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    const-string v2, " decor="

    if-nez v1, :cond_2d

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeOverlayHandlerWindow: already requested. ohv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 141
    return-void

    .line 144
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeOverlayHandlerWindow: on request. ohv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v1, :cond_d9

    .line 147
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_56
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->removeWindow()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_80
    .catchall {:try_start_56 .. :try_end_59} :catchall_7e

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 152
    iput-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 153
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    .line 154
    goto :goto_d9

    .line 151
    :catchall_7e
    move-exception v1

    goto :goto_b4

    .line 148
    :catch_80
    move-exception v1

    .line 149
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeOverlayHandlerWindow: fail. ohv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_81 .. :try_end_ae} :catchall_7e

    .line 151
    .end local v1    # "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5e

    :goto_b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 152
    iput-object v4, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 153
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    .line 154
    throw v1

    .line 156
    :cond_d9
    :goto_d9
    return-void
.end method

.method public blacklist setHandlerAutoHide(Z)V
    .registers 3
    .param p1, "autoHide"    # Z

    .line 178
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->setAutoHide(Z)V

    .line 181
    :cond_7
    return-void
.end method

.method blacklist setOverlayHandlerActivated(Z)V
    .registers 3
    .param p1, "activated"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mIsOverlayHandlerActivated:Z

    .line 49
    if-nez p1, :cond_7

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    .line 52
    :cond_7
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 77
    .local v0, "visible":Z
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->isAttachedToWindow()Z

    move-result v1

    .line 78
    .local v1, "attached":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVisibility: visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " decor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 79
    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->createOverlayHandlerWindow()V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/DecorView;->registerMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V

    goto :goto_5e

    .line 83
    :cond_56
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->removeOverlayHandlerWindow()V

    .line 84
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/DecorView;->unregisterMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V

    .line 86
    :goto_5e
    return-void
.end method

.method public blacklist updateConfiguration()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiSplitHandler;->mOverlayHandlerView:Lcom/samsung/android/multiwindow/OverlayHandlerView;

    if-eqz v0, :cond_7

    .line 172
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->updateConfigurationChanged()V

    .line 174
    :cond_7
    return-void
.end method
