.class public Lcom/android/server/wm/WallpaperAnimationAdapter;
.super Ljava/lang/Object;
.source "WallpaperAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperAnimationAdapter"


# instance fields
.field public mAnimationCanceledRunnable:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mDurationHint:J

.field public mLastAnimationType:I

.field public mStatusBarTransitionDelay:J

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;


# direct methods
.method public static synthetic $r8$lambda$pFt1sM34mQb-FFZsZckZ6IVTj_M(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/wm/WallpaperAnimationAdapter;->lambda$startWallpaperAnimations$0(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WallpaperWindowToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 62
    iput-wide p2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    .line 63
    iput-wide p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 64
    iput-object p6, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic lambda$startWallpaperAnimations$0(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 16

    .line 83
    new-instance v7, Lcom/android/server/wm/WallpaperAnimationAdapter;

    move-object v0, v7

    move-object v1, p7

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V

    .line 86
    invoke-virtual {p7}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 p1, 0x0

    const/16 p2, 0x10

    invoke-virtual {p7, p0, v7, p1, p2}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 88
    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_a
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const/4 p0, 0x1

    return p0
.end method

.method public static startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 77
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x78ab5340

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "\tWallpaper of display=%s is not visible"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    new-array v0, v1, [Landroid/view/RemoteAnimationTarget;

    return-object v0

    .line 81
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v9, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;-><init>(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v1, p0

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method


# virtual methods
.method public createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 20

    move-object/from16 v0, p0

    .line 121
    new-instance v15, Landroid/view/RemoteAnimationTarget;

    move-object v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 122
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v8

    new-instance v2, Landroid/graphics/Point;

    move-object v9, v2

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 123
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "token="

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_31

    .line 197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    .line 198
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_39

    .line 201
    :cond_31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "Target: null"

    .line 202
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    const-wide v0, 0x10b00000002L

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p0, :cond_15

    const-wide v2, 0x10b00000001L

    .line 210
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 212
    :cond_15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDurationHint()J
    .registers 3

    .line 183
    iget-wide v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    return-wide v0
.end method

.method public getLastAnimationType()I
    .registers 1

    .line 146
    iget p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    return p0
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object p0
.end method

.method public getShowWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 5

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getToken()Lcom/android/server/wm/WallpaperWindowToken;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    return-object p0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 6

    .line 177
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz p1, :cond_11

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x2d58e9e4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "onAnimationCancelled"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 10

    .line 166
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x3ff83206

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "startAnimation"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 171
    iput-object p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 172
    iput p3, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    return-void
.end method
