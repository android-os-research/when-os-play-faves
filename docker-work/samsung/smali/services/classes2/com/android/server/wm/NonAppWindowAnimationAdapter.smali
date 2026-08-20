.class public Lcom/android/server/wm/NonAppWindowAnimationAdapter;
.super Ljava/lang/Object;
.source "NonAppWindowAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mDurationHint:J

.field public mLastAnimationType:I

.field public mStatusBarTransitionDelay:J

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static synthetic $r8$lambda$hDggGPY73H5QnvpkmuziT6CKuQs(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->lambda$startNonAppWindowAnimationsForKeyguardExit$0(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;JJ)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 63
    iput-wide p2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    .line 64
    iput-wide p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    return-void
.end method

.method public static synthetic lambda$startNonAppWindowAnimationsForKeyguardExit$0(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 14

    .line 111
    iget-object v0, p7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_3b

    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 112
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eq p7, p0, :cond_3b

    .line 114
    new-instance p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    move-object v0, p0

    move-object v1, p7

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    .line 116
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p7}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x10

    invoke-virtual {p7, p1, p0, p2, p3}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-void
.end method

.method public static shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z
    .registers 4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_c

    const/16 v0, 0xa

    if-eq p2, v0, :cond_c

    const/16 v0, 0xc

    if-ne p2, v0, :cond_24

    .line 93
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    if-nez p0, :cond_24

    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public static shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z
    .registers 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_b

    const/16 v0, 0x15

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static startNavigationBarWindowAnimation(Lcom/android/server/wm/DisplayContent;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 134
    new-instance v6, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    .line 136
    invoke-virtual {p6, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x10

    invoke-virtual {p0, p1, v6, p2, p3}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 139
    invoke-virtual {v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static startNonAppWindowAnimations(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;IJJLjava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "IJJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 71
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p2}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move-object v5, v7

    move-object v6, p7

    .line 73
    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNonAppWindowAnimationsForKeyguardExit(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_22

    .line 75
    :cond_14
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    move-result p0

    if-eqz p0, :cond_22

    move-object v0, p1

    move-wide v1, p3

    move-wide v3, p5

    move-object v5, v7

    move-object v6, p7

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNavigationBarWindowAnimation(Lcom/android/server/wm/DisplayContent;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 80
    :cond_22
    :goto_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public static startNonAppWindowAnimationsForKeyguardExit(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    .line 108
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 109
    iget-object v8, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v9, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p6

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v9, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method


# virtual methods
.method public createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 21

    move-object/from16 v0, p0

    .line 146
    new-instance v15, Landroid/view/RemoteAnimationTarget;

    move-object v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    new-instance v2, Landroid/graphics/Rect;

    move-object v6, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 147
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v8

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 148
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastSurfacePosition()Landroid/graphics/Point;

    move-result-object v9

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 149
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 150
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v18

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowContainer="

    .line 208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_31

    .line 211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    .line 212
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_39

    .line 215
    :cond_31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "Target: null"

    .line 216
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    const-wide v0, 0x10b00000002L

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 223
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p0, :cond_15

    const-wide v2, 0x10b00000001L

    .line 224
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 226
    :cond_15
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDurationHint()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    return-wide v0
.end method

.method public getLastAnimationType()I
    .registers 1

    .line 175
    iget p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    return p0
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object p0
.end method

.method public getShowWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 5

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWindowContainer()Lcom/android/server/wm/WindowContainer;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 202
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz p0, :cond_11

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p1, -0x44c5d0ec

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "onAnimationCancelled"

    invoke-static {p0, p1, v0, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 9

    .line 157
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz p2, :cond_11

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x772f64fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "startAnimation"

    invoke-static {p2, v0, v1, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 159
    iput-object p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 160
    iput p3, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    return-void
.end method
