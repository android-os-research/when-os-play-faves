.class public Lcom/android/server/wm/TaskbarController;
.super Ljava/lang/Object;
.source "TaskbarController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TASK_BAR:Ljava/lang/String; = "task_bar"

.field public static final TASK_BAR_HEIGHT_DIRECTIONS:Ljava/lang/String; = "task_bar_height_directions"

.field public static final WAITING_FOR_NEXT_BAR_TIMEOUT_MS:I = 0x1f4


# instance fields
.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTaskbarHeightForRotation:[I

.field public final mWaitingForNextBarTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$5fZ1EcJuFs565mW8ADPTvRMRo0g(Lcom/android/server/wm/TaskbarController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskbarController;->lambda$freezeDisplayToWaitForNextBar$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$AtAe6TOHK4fIlS9gV7tu5tvvh1E(Lcom/android/server/wm/TaskbarController;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskbarController;->lambda$setAdditionalInsetProviders$4(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G-Gs0RWvsfXu9mEdyk_Ik3UOcLQ(Lcom/android/server/wm/TaskbarController;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskbarController;->lambda$updateTaskbarStableHeight$0([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GJxWF53skMX65cbB1DDHfQqMMbM(Lcom/android/server/wm/TaskbarController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->unfreezeDisplayByWaitingForNextBarTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$RQgS3neqCCjWYVONVT5jaMWEIBo(Lcom/android/server/wm/TaskbarController;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskbarController;->lambda$setAdditionalInsetProviders$3(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W6Q5QsPOZGqI7l4cgtEsYdr_nYs(Lcom/android/server/wm/TaskbarController;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskbarController;->lambda$setAdditionalInsetProviders$1(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xDMpPWvvc-hwzodM_IsNp4797sc(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/TaskbarController;->lambda$setAdditionalInsetProviders$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayPolicyExt;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskbarController;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskbarController;->mWaitingForNextBarTimeoutRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 66
    iput-object v0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarHeightForRotation:[I

    .line 69
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 70
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object p1, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method public static isTaskbar(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 74
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    array-length v1, p0

    if-lez v1, :cond_f

    aget p0, p0, v0

    const/16 v1, 0x15

    if-ne p0, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private synthetic lambda$freezeDisplayToWaitForNextBar$5()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 240
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 241
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string p0, "WindowManager"

    const-string v1, "freezeDisplayToWaitForNextBar, returned by animating rotation"

    .line 242
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_24
    :try_start_24
    const-string v1, "WindowManager"

    const-string v2, "freezeDisplayToWaitForNextBar"

    .line 246
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mWaitingForNextBar:Z

    .line 249
    iget-object v2, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/TaskbarController;->mWaitingForNextBarTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mWaitingForNextBarTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_51
    move-exception p0

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$setAdditionalInsetProviders$1(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    .line 149
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getBottomGestureSensitivity()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public static synthetic lambda$setAdditionalInsetProviders$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 154
    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz p1, :cond_16

    .line 156
    array-length p2, p1

    const/16 v0, 0x15

    if-le p2, v0, :cond_16

    aget-object p1, p1, v0

    if-eqz p1, :cond_16

    .line 159
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 161
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$setAdditionalInsetProviders$3(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 167
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    .line 168
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 169
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 170
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 171
    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private synthetic lambda$setAdditionalInsetProviders$4(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 176
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 177
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x0

    .line 180
    iput p0, p3, Landroid/graphics/Rect;->top:I

    .line 181
    iget p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 182
    iget p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private synthetic lambda$updateTaskbarStableHeight$0([I)V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarHeightForRotation:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 128
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 131
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarHeightForRotation:[I

    const/4 v2, 0x0

    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 132
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 133
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 134
    aget p1, p1, v2

    aput p1, v1, v2

    const-string p1, "WindowManager"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTaskbarStableHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarHeightForRotation:[I

    .line 137
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 139
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_15 .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_54
    move-exception p0

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addTaskbarAdditionalInset(ILandroid/graphics/Rect;)V
    .registers 3

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskbarController;->calculateTaskbarAdditionalInset(I)I

    move-result p0

    if-lez p0, :cond_b

    .line 106
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_b
    return-void
.end method

.method public adjustInsetsControlForTaskbar(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_25

    const/16 v0, 0x15

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result p0

    if-nez p0, :cond_25

    .line 205
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_25
    return-object p1
.end method

.method public adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 4

    if-eqz p1, :cond_19

    const/16 v0, 0x15

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result p0

    if-nez p0, :cond_19

    .line 192
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->removeSource(I)Z

    return-object p0

    :cond_19
    return-object p1
.end method

.method public applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 216
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/TaskbarController;->isTaskbar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v0, v0, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {v0}, Lcom/android/server/wm/ExtraDisplayFactory;->fold()Lcom/android/server/wm/FoldDisplayController;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v0, v0, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    .line 217
    invoke-virtual {v0}, Lcom/android/server/wm/ExtraDisplayFactory;->fold()Lcom/android/server/wm/FoldDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/FoldDisplayController;->isInDisplaySwapped()Z

    move-result v0

    if-nez v0, :cond_51

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v0, v0, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {v0}, Lcom/android/server/wm/ExtraDisplayFactory;->fold()Lcom/android/server/wm/FoldDisplayController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Lcom/android/server/wm/FoldDisplayController;->isInPrimaryDevice(Landroid/view/DisplayInfo;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_4d

    .line 220
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    goto :goto_50

    .line 222
    :cond_4d
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :goto_50
    return v0

    :cond_51
    return v1
.end method

.method public calculateTaskbarAdditionalInset(I)I
    .registers 3

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskbarController;->getTaskbarStableHeight(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public clearWaitingForNextBarLocked()V
    .registers 3

    const-string v0, "WindowManager"

    const-string v1, "clearWaitingForNextBarLocked"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForNextBar:Z

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mWaitingForNextBarTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public freezeDisplayToWaitForNextBar()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskbarController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getTaskbarInsetHeight()I
    .registers 1

    .line 93
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->peekTaskbarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public getTaskbarStableHeight(I)I
    .registers 3

    if-ltz p1, :cond_b

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    goto :goto_b

    .line 118
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarHeightForRotation:[I

    aget p0, p0, p1

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public hasTaskbar()Z
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isTaskbarVisible()Z
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->peekTaskbarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final peekTaskbarProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/16 v0, 0x15

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    return-object p0
.end method

.method public setAdditionalInsetProviders(Lcom/android/server/wm/WindowState;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskbarController;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskbarController;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TaskbarController;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public final unfreezeDisplayByWaitingForNextBarTimeout()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "WindowManager"

    const-string/jumbo v2, "unfreezeDisplayByWaitingForNextBarTimeout"

    .line 266
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->clearWaitingForNextBarLocked()V

    .line 268
    iget-object v1, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 269
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateTaskbarStableHeight([I)V
    .registers 4

    if-eqz p1, :cond_13

    .line 122
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_13

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/TaskbarController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskbarController;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_13
    return-void
.end method
