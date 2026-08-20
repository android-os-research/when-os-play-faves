.class public Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$Traverser;
    }
.end annotation


# static fields
.field public static final SET_UPDATE_ROTATION:I = 0x1

.field public static final SET_WALLPAPER_ACTION_PENDING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mDeferDepth:I

.field public mDeferredRequests:I

.field public mInLayout:Z

.field public mLayoutRepeatCount:I

.field public final mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTraversalScheduled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 57
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 70
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowSurfacePlacer$Traverser-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public continueLayout(Z)V
    .registers 7

    .line 95
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, "WindowManager"

    if-nez p1, :cond_31

    .line 100
    iget v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    if-lez v3, :cond_14

    goto :goto_31

    .line 107
    :cond_14
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz p0, :cond_65

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cancel continueLayout "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 101
    :cond_31
    :goto_31
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v3, :cond_5f

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueLayout hasChanges="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " deferredRequests="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {v1, v0}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    :cond_65
    :goto_65
    return-void
.end method

.method public debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 4

    .line 211
    iget p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_27

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Layouts looping: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPendingLayoutChanges = 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    .line 212
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public deferLayout()V
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mObscuringWindow="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isInLayout()Z
    .registers 1

    .line 218
    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return p0
.end method

.method public isLayoutDeferred()Z
    .registers 1

    .line 113
    iget p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final performSurfacePlacement()V
    .registers 2

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    return-void
.end method

.method public final performSurfacePlacement(Z)V
    .registers 5

    .line 127
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_d

    if-nez p1, :cond_d

    .line 128
    iget p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    return-void

    :cond_d
    const/4 p1, 0x6

    :cond_e
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, -0x1

    .line 137
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_25

    if-gtz p1, :cond_e

    .line 138
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    return-void
.end method

.method public performSurfacePlacementIfScheduled()V
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_7
    return-void
.end method

.method public final performSurfacePlacementLoop()V
    .registers 7

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_2d

    .line 143
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-nez p0, :cond_25

    const-string p0, "WindowManager"

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 147
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_25
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Recursive call!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 153
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_38

    return-void

    .line 160
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v1, :cond_3f

    return-void

    :cond_3f
    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 167
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_92

    .line 169
    :goto_4b
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    const-string v3, "WindowManager"

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_4b

    :cond_79
    const-string v0, "WindowManager"

    const-string v3, "Due to memory failure, waiting a bit for next layout"

    .line 174
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 176
    monitor-enter v0

    const-wide/16 v3, 0xfa

    .line 178
    :try_start_88
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_8b
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8b} :catch_8e
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_8e

    :catchall_8c
    move-exception p0

    goto :goto_90

    .line 181
    :catch_8e
    :goto_8e
    :try_start_8e
    monitor-exit v0

    goto :goto_92

    :goto_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_8c

    throw p0

    .line 185
    :cond_92
    :goto_92
    :try_start_92
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 187
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 190
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_b1

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_bd

    :cond_b1
    const-string v0, "WindowManager"

    const-string v1, "Performed 6 layouts in a row. Skipping"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_bd

    .line 197
    :cond_bb
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 200
    :goto_bd
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v1, :cond_e6

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_db
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_db} :catch_dc

    goto :goto_e6

    :catch_dc
    move-exception v0

    .line 205
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    const-string p0, "WindowManager"

    const-string v1, "Unhandled exception while laying out windows"

    .line 206
    invoke-static {p0, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e6
    :goto_e6
    return-void
.end method

.method public requestTraversal()V
    .registers 3

    .line 222
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 230
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_31

    .line 231
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    .line 232
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz p0, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Defer requestTraversal "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    .line 235
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
