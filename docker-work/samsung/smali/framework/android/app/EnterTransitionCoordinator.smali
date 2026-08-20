.class Landroid/app/EnterTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "EnterTransitionCoordinator.java"


# static fields
.field private static final greylist-max-o MIN_ANIMATION_FRAMES:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EnterTransitionCoordinator"


# instance fields
.field private greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mAreViewsReady:Z

.field private greylist-max-o mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mEnterViewsTransition:Landroid/transition/Transition;

.field private greylist-max-o mHasStopped:Z

.field private greylist-max-o mIsCanceled:Z

.field private final greylist-max-o mIsCrossTask:Z

.field private greylist-max-o mIsExitTransitionComplete:Z

.field private greylist-max-o mIsReadyForTransition:Z

.field private blacklist mIsTaskRoot:Z

.field private greylist-max-o mIsViewsTransitionStarted:Z

.field private blacklist mOnTransitionComplete:Ljava/lang/Runnable;

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReplacedBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mSharedElementTransitionStarted:Z

.field private greylist-max-o mSharedElementsBundle:Landroid/os/Bundle;

.field private greylist-max-o mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

.field private greylist-max-o mWasOpaque:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsReadyForTransition(Landroid/app/EnterTransitionCoordinator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterViewsTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V
    .registers 2

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbeginTransition(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeOpaque(Landroid/app/EnterTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msharedElementTransitionStarted(Landroid/app/EnterTransitionCoordinator;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartEnterTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSharedElementTransition(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "isReturning"    # Z
    .param p5, "isCrossTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 81
    .local p3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p4, :cond_a

    if-nez p5, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 82
    :goto_b
    invoke-static {p1, v1}, Landroid/app/EnterTransitionCoordinator;->getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;

    move-result-object v1

    .line 81
    invoke-direct {p0, v0, p3, v1, p4}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    .line 83
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 84
    iput-boolean p5, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    .line 85
    invoke-virtual {p0, p2}, Landroid/app/EnterTransitionCoordinator;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->prepareEnter()V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "resultReceiverBundle":Landroid/os/Bundle;
    const-string v1, "android:remoteReceiver"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 91
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_3f

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 93
    .local v2, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    new-instance v3, Landroid/app/EnterTransitionCoordinator$1;

    invoke-direct {v3, p0, v2, v1}, Landroid/app/EnterTransitionCoordinator$1;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 110
    .end local v2    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnterTransitionCoordinator is created, activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v3, "EnterTransitionCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method private greylist-max-o allowOverlappingTransitions()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAllowReturnTransitionOverlap()Z

    move-result v0

    goto :goto_15

    .line 723
    :cond_d
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAllowEnterTransitionOverlap()Z

    move-result v0

    .line 722
    :goto_15
    return v0
.end method

.method private greylist-max-o beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .registers 9
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    const/4 v1, 0x0

    if-eqz p3, :cond_25

    .line 518
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 519
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 521
    :cond_14
    if-nez v0, :cond_1d

    .line 522
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    .line 523
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_25

    .line 525
    :cond_1d
    new-instance v2, Landroid/app/EnterTransitionCoordinator$4;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$4;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 539
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 540
    .local v2, "viewsTransition":Landroid/transition/Transition;
    if-eqz p2, :cond_4f

    .line 541
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 542
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 543
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v2

    .line 545
    :cond_3f
    if-nez v2, :cond_45

    .line 546
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    goto :goto_4f

    .line 548
    :cond_45
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 549
    .local v3, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Landroid/app/EnterTransitionCoordinator$5;

    invoke-direct {v4, p0, v3}, Landroid/app/EnterTransitionCoordinator$5;-><init>(Landroid/app/EnterTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 570
    .end local v3    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4f
    :goto_4f
    invoke-static {v0, v2}, Landroid/app/EnterTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v3

    .line 571
    .local v3, "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_6f

    .line 572
    new-instance v4, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;

    invoke-direct {v4, p0}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 573
    if-eqz p2, :cond_63

    .line 574
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 576
    :cond_63
    invoke-static {p1, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 577
    if-eqz p2, :cond_6b

    .line 578
    invoke-virtual {p0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 580
    :cond_6b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_72

    .line 582
    :cond_6f
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->transitionStarted()V

    .line 584
    :goto_72
    return-object v3
.end method

.method private greylist-max-o cancel()V
    .registers 3

    .line 335
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_3c

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 337
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-eqz v1, :cond_12

    goto :goto_1e

    .line 339
    :cond_12
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 340
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    .line 338
    :cond_1e
    :goto_1e
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 342
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 343
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    .line 347
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    .line 349
    :cond_3c
    return-void
.end method

.method private static greylist-max-o getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isReturning"    # Z

    .line 245
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    :goto_7
    return-object v0
.end method

.method private greylist-max-o makeOpaque()V
    .registers 3

    .line 713
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    .line 714
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    if-eqz v1, :cond_f

    .line 715
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 717
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 719
    :cond_12
    return-void
.end method

.method private greylist-max-o mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 188
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 189
    .local v0, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 190
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_e

    .line 191
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 193
    :cond_e
    if-eqz p1, :cond_39

    .line 194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 195
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, "acceptedName":Ljava/lang/String;
    if-eqz v3, :cond_36

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 198
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 199
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_36

    .line 200
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "acceptedName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 205
    .end local v2    # "i":I
    :cond_39
    return-object v0
.end method

.method private greylist-max-o onTakeSharedElements()V
    .registers 6

    .line 481
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-nez v0, :cond_9

    goto :goto_25

    .line 484
    :cond_9
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 485
    .local v0, "sharedElementState":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 486
    new-instance v1, Landroid/app/EnterTransitionCoordinator$3;

    invoke-direct {v1, p0, v0}, Landroid/app/EnterTransitionCoordinator$3;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 500
    .local v1, "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v2, :cond_1b

    .line 501
    invoke-interface {v1}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    goto :goto_24

    .line 503
    :cond_1b
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 505
    :goto_24
    return-void

    .line 482
    .end local v0    # "sharedElementState":Landroid/os/Bundle;
    .end local v1    # "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    :cond_25
    :goto_25
    return-void
.end method

.method private static greylist-max-o removeNullViews(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_16

    .line 472
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_16

    .line 473
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 474
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 472
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 478
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method private greylist-max-o requestLayoutForSharedElements()V
    .registers 4

    .line 508
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 509
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 510
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 512
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private greylist-max-o sendSharedElementDestination()V
    .registers 6

    .line 210
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 211
    .local v0, "decorView":Landroid/view/View;
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 212
    const/4 v1, 0x0

    .local v1, "allReady":Z
    goto :goto_3a

    .line 213
    .end local v1    # "allReady":Z
    :cond_12
    if-nez v0, :cond_16

    .line 214
    const/4 v1, 0x1

    .restart local v1    # "allReady":Z
    goto :goto_3a

    .line 216
    .end local v1    # "allReady":Z
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 217
    .restart local v1    # "allReady":Z
    if-eqz v1, :cond_3a

    .line 218
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 219
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 220
    const/4 v1, 0x0

    .line 221
    goto :goto_3a

    .line 218
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 226
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_4b

    .line 227
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v2

    .line 228
    .local v2, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 229
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .end local v2    # "state":Landroid/os/Bundle;
    goto :goto_56

    .line 230
    :cond_4b
    if-eqz v0, :cond_56

    .line 231
    new-instance v2, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-static {v0, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    goto :goto_57

    .line 230
    :cond_56
    :goto_56
    nop

    .line 239
    :goto_57
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 240
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 242
    :cond_60
    return-void
.end method

.method private greylist-max-o sharedElementTransitionStarted()V
    .registers 3

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 615
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    if-eqz v0, :cond_d

    .line 616
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->send(ILandroid/os/Bundle;)V

    .line 618
    :cond_d
    return-void
.end method

.method private greylist-max-o startEnterTransition(Landroid/transition/Transition;)V
    .registers 7
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 621
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 622
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_57

    if-eqz v0, :cond_57

    .line 623
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 624
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_42

    .line 625
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 626
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xff

    aput v4, v2, v3

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 628
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getFadeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 629
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/EnterTransitionCoordinator$6;

    invoke-direct {v3, p0}, Landroid/app/EnterTransitionCoordinator$6;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 636
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_56

    .line 637
    :cond_42
    if-eqz p1, :cond_50

    .line 638
    new-instance v2, Landroid/app/EnterTransitionCoordinator$7;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$7;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 645
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    goto :goto_56

    .line 647
    :cond_50
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    .line 648
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 650
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :goto_56
    goto :goto_5a

    .line 651
    :cond_57
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 653
    :goto_5a
    return-void
.end method

.method private greylist-max-o startEnterTransitionOnly()V
    .registers 2

    .line 761
    new-instance v0, Landroid/app/EnterTransitionCoordinator$9;

    invoke-direct {v0, p0}, Landroid/app/EnterTransitionCoordinator$9;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 774
    return-void
.end method

.method private greylist-max-o startRejectedAnimations(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p1, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3f

    .line 730
    :cond_9
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 731
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3e

    .line 732
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 733
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    const/4 v2, 0x0

    .line 734
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 735
    .local v3, "numRejected":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_36

    .line 736
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 737
    .local v5, "snapshot":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 738
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_40

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 739
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 735
    .end local v5    # "snapshot":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 741
    .end local v4    # "i":I
    :cond_36
    new-instance v4, Landroid/app/EnterTransitionCoordinator$8;

    invoke-direct {v4, p0, v0, p1}, Landroid/app/EnterTransitionCoordinator$8;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 752
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v3    # "numRejected":I
    :cond_3e
    return-void

    .line 728
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_3f
    :goto_3f
    return-void

    :array_40
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private greylist-max-o startSharedElementTransition(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 409
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 410
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_7

    .line 411
    return-void

    .line 414
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 415
    .local v1, "rejectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 416
    invoke-virtual {p0, p1, v1}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 417
    .local v2, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v3, :cond_20

    .line 418
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v3, v2}, Landroid/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 420
    :cond_20
    invoke-static {v2}, Landroid/app/EnterTransitionCoordinator;->removeNullViews(Ljava/util/ArrayList;)V

    .line 421
    invoke-direct {p0, v2}, Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V

    .line 424
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 426
    .local v3, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 427
    invoke-virtual {p0, v3}, Landroid/app/EnterTransitionCoordinator;->scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V

    .line 428
    nop

    .line 429
    invoke-virtual {p0, p1, v3}, Landroid/app/EnterTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 430
    .local v4, "originalImageViewState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->requestLayoutForSharedElements()V

    .line 432
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_49

    iget-boolean v6, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v6, :cond_49

    goto :goto_4a

    :cond_49
    move v5, v7

    .line 433
    .local v5, "startEnterTransition":Z
    :goto_4a
    const/4 v6, 0x1

    .line 434
    .local v6, "startSharedElementTransition":Z
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 435
    invoke-virtual {p0, v8}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 436
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->pauseInput()V

    .line 437
    invoke-direct {p0, v0, v5, v6}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v8

    .line 439
    .local v8, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v7}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 440
    invoke-virtual {p0, v7}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 442
    if-eqz v5, :cond_64

    .line 443
    invoke-direct {p0, v8}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    .line 446
    :cond_64
    iget-object v7, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-static {v7, v4}, Landroid/app/EnterTransitionCoordinator;->setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 448
    iget-object v7, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v7, :cond_75

    .line 451
    new-instance v7, Landroid/app/EnterTransitionCoordinator$2;

    invoke-direct {v7, p0}, Landroid/app/EnterTransitionCoordinator$2;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 468
    :cond_75
    return-void
.end method

.method private greylist-max-o triggerViewsReady(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    if-eqz v0, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    .line 172
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 174
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 175
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_37

    .line 178
    :cond_28
    new-instance v1, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    move-result-object v1

    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3a

    .line 176
    :cond_37
    :goto_37
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 184
    :goto_3a
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelEnter()Z
    .registers 2

    .line 689
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    .line 691
    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 692
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    .line 693
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->cancelPendingTransitions()Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o clearState()V
    .registers 3

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 699
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    .line 700
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 701
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_10

    .line 702
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 703
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 705
    :cond_10
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    .line 706
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 707
    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 709
    :cond_19
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    .line 710
    return-void
.end method

.method public greylist-max-o forceViewsToAppear()V
    .registers 6

    .line 292
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v0, :cond_5

    .line 293
    return-void

    .line 295
    :cond_5
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3d

    .line 296
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 297
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 298
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1d

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    if-eqz v4, :cond_1d

    .line 299
    invoke-virtual {v4}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    .line 300
    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 302
    :cond_1d
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 303
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 304
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 305
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 307
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 308
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 309
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 310
    .end local v0    # "decor":Landroid/view/ViewGroup;
    goto :goto_6c

    .line 311
    :cond_3d
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-nez v0, :cond_53

    .line 312
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 313
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 314
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 315
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 318
    :cond_53
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-nez v0, :cond_69

    .line 319
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 320
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 321
    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 322
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 325
    :cond_69
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->cancelPendingTransitions()Z

    .line 327
    :goto_6c
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    .line 328
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_7b

    .line 329
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 330
    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 332
    :cond_7b
    return-void
.end method

.method public greylist-max-o getEnterViewsTransition()Landroid/transition/Transition;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public blacklist getPendingExitSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected greylist-max-o getSharedElementTransition()Landroid/transition/Transition;
    .registers 3

    .line 397
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 398
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_8

    .line 399
    const/4 v1, 0x0

    return-object v1

    .line 401
    :cond_8
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_11

    .line 402
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    .line 404
    :cond_11
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o getViewsTransition()Landroid/transition/Transition;
    .registers 3

    .line 385
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 386
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_8

    .line 387
    const/4 v1, 0x0

    return-object v1

    .line 389
    :cond_8
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_11

    .line 390
    invoke-virtual {v0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    .line 392
    :cond_11
    invoke-virtual {v0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o isCrossTask()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    return v0
.end method

.method public greylist-max-o isReturning()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    return v0
.end method

.method public greylist-max-o isWaitingForRemoteExit()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic blacklist lambda$sendSharedElementDestination$1$android-app-EnterTransitionCoordinator()V
    .registers 4

    .line 232
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_12

    .line 233
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 235
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 237
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_12
    return-void
.end method

.method synthetic blacklist lambda$triggerViewsReady$0$android-app-EnterTransitionCoordinator(Landroid/util/ArrayMap;)V
    .registers 3
    .param p1, "sharedElements"    # Landroid/util/ArrayMap;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Lcom/android/internal/view/OneShotPreDrawListener;

    .line 180
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 181
    return-void
.end method

.method public greylist-max-o namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 140
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 250
    packed-switch p1, :pswitch_data_2e

    :pswitch_3
    goto :goto_2d

    .line 269
    :pswitch_4
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsTaskRoot:Z

    if-nez v0, :cond_2d

    .line 270
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mPendingExitNames:Ljava/util/ArrayList;

    goto :goto_2d

    .line 266
    :pswitch_11
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->cancel()V

    .line 267
    goto :goto_2d

    .line 258
    :pswitch_15
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2d

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    .line 260
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-eqz v0, :cond_2d

    .line 261
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    goto :goto_2d

    .line 252
    :pswitch_24
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2d

    .line 253
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 254
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    .line 274
    :cond_2d
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x67
        :pswitch_24
        :pswitch_15
        :pswitch_3
        :pswitch_11
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected greylist-max-o onRemoteExitTransitionComplete()V
    .registers 2

    .line 755
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v0

    if-nez v0, :cond_9

    .line 756
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 758
    :cond_9
    return-void
.end method

.method protected greylist-max-o onTransitionsComplete()V
    .registers 6

    .line 597
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 598
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 599
    .local v0, "decorView":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 600
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 602
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 603
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_20

    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mReplacedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v3, v4, :cond_20

    .line 604
    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    .end local v2    # "window":Landroid/view/Window;
    :cond_20
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    if-eqz v2, :cond_29

    .line 608
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 609
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 611
    :cond_29
    return-void
.end method

.method protected greylist-max-o prepareEnter()V
    .registers 6

    .line 356
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 357
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_52

    if-nez v0, :cond_b

    goto :goto_52

    .line 361
    :cond_b
    invoke-virtual {v1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsTaskRoot:Z

    .line 363
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 364
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 366
    :cond_1d
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    const/4 v3, 0x0

    if-nez v1, :cond_4f

    .line 367
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    .line 368
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 369
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_39

    .line 370
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v1, v3

    .line 371
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mReplacedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    .line 373
    :cond_39
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 377
    :goto_47
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_51

    .line 379
    :cond_4f
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 381
    :goto_51
    return-void

    .line 358
    :cond_52
    :goto_52
    return-void
.end method

.method public blacklist runAfterTransitionsComplete(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "onTransitionComplete"    # Ljava/lang/Runnable;

    .line 588
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 589
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onTransitionsComplete()V

    goto :goto_c

    .line 591
    :cond_a
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mOnTransitionComplete:Ljava/lang/Runnable;

    .line 593
    :goto_c
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 5

    .line 658
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 659
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 660
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_1f

    .line 661
    :cond_c
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    if-eqz v0, :cond_1f

    .line 662
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 663
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    .line 664
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 665
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1f

    .line 666
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 670
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    .line 671
    iput-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 672
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 673
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 674
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 675
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 676
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 679
    :cond_38
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 680
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    .line 681
    return-void
.end method

.method public greylist-max-o viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "remap":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 124
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 125
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_28

    .line 123
    .end local v2    # "view":Landroid/view/View;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .restart local v2    # "view":Landroid/view/View;
    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 131
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_29
    if-eqz v0, :cond_33

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    goto :goto_3a

    .line 134
    :cond_33
    invoke-virtual {p0, p1, p3}, Landroid/app/EnterTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 136
    :goto_3a
    return-void
.end method

.method protected greylist-max-o viewsReady(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 150
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 152
    .local v0, "viewsTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    .line 153
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->stripOffscreenViews()V

    .line 155
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 157
    :cond_22
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_2a

    .line 158
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sendSharedElementDestination()V

    goto :goto_2d

    .line 160
    :cond_2a
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 162
    :goto_2d
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_34

    .line 163
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    .line 165
    :cond_34
    return-void
.end method
