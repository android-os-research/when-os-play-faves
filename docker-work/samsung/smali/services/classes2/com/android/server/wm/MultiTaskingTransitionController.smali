.class public Lcom/android/server/wm/MultiTaskingTransitionController;
.super Ljava/lang/Object;
.source "MultiTaskingTransitionController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiTaskingTransitionController$H;
    }
.end annotation


# static fields
.field public static final FREEZE_DISPLAY_TIMEOUT_MS:I = 0x7d0

.field public static final MINIMIZE_ALPHA:F = 0.0f

.field public static final MINIMIZE_SCALE:F = 0.2f

.field public static final MW_MINIMIZE_ANIMATION_DURATION:I = 0xfa

.field public static final RESTORE_ALPHA:F = 1.0f

.field public static final RESTORE_SCALE:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "MultiTaskingTransitionController"


# instance fields
.field public final mAnimationLoaderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/AnimationLoader;",
            ">;"
        }
    .end annotation
.end field

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mDisplayFrozenByTransaction:Z

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/MultiTaskingTransitionController$H;

.field public final mRemoteAnimControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransitionState:Lcom/android/server/wm/MultiTaskingTransitionState;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/MultiTaskingTransitionController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAnimationLoaderMap:Landroid/util/SparseArray;

    .line 87
    new-instance v1, Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mTransitionState:Lcom/android/server/wm/MultiTaskingTransitionState;

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mTaskPositions:Ljava/util/HashMap;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 110
    new-instance p0, Lcom/android/server/wm/SplitAnimationLoader;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/SplitAnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    new-instance p0, Lcom/android/server/wm/FreeformAnimationLoader;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/FreeformAnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz p0, :cond_47

    const/4 p0, 0x5

    .line 126
    new-instance v2, Lcom/android/server/wm/SplitActivityAnimationLoader;

    invoke-direct {v2, v1, p1}, Lcom/android/server/wm/SplitActivityAnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_47
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p0, :cond_54

    const/4 p0, 0x6

    .line 130
    new-instance v2, Lcom/android/server/wm/EmbedActivityAnimationLoader;

    invoke-direct {v2, v1, p1}, Lcom/android/server/wm/EmbedActivityAnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_54
    return-void
.end method

.method public static createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 208
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_e

    .line 210
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 212
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v10, v1, v4

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v11, v1, v2

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p0, :cond_2f

    move v8, v1

    goto :goto_30

    :cond_2f
    move v8, v2

    :goto_30
    if-eqz p0, :cond_34

    move v9, v2

    goto :goto_35

    :cond_34
    move v9, v1

    .line 217
    :goto_35
    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 218
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    if-eqz p0, :cond_4a

    move v12, v3

    goto :goto_4b

    :cond_4a
    move v12, v4

    :goto_4b
    if-eqz p0, :cond_4e

    move v3, v4

    :cond_4e
    if-eqz p0, :cond_52

    move v13, v0

    goto :goto_53

    :cond_52
    move v13, v4

    :goto_53
    if-eqz p0, :cond_56

    move v0, v4

    :cond_56
    if-eqz p0, :cond_5a

    move v14, v4

    goto :goto_5b

    :cond_5a
    move v14, v2

    :goto_5b
    if-eqz p0, :cond_5f

    move v15, v2

    goto :goto_60

    :cond_5f
    move v15, v4

    .line 227
    :goto_60
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move-object v5, v7

    move v6, v8

    move-object/from16 v16, v7

    move v7, v9

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 228
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v12, v3, v13, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 229
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 231
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-direct {v3, v6, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 232
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v6, v4, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 234
    invoke-virtual {v5, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v1, v16

    .line 236
    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 238
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 239
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 240
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 242
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 243
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    const-wide/16 v0, 0xfa

    .line 244
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    if-eqz p0, :cond_ae

    .line 246
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    :cond_ae
    return-object v2
.end method


# virtual methods
.method public clearMinimizeAnimState(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 197
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 199
    iput v0, p1, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[MultiTaskingTransitionController]"

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAnimControllers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mRemoteAnimControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationTransferMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    :cond_4f
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    if-eqz p0, :cond_67

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mDisplayFrozenByTransaction=true"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method public getDexAnimationLoader()Lcom/android/server/wm/DexAnimationLoader;
    .registers 2

    .line 262
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAnimationLoaderMap:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AnimationLoader;

    if-eqz p0, :cond_e

    .line 263
    check-cast p0, Lcom/android/server/wm/DexAnimationLoader;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public getFreeformAnimationLoader()Lcom/android/server/wm/FreeformAnimationLoader;
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAnimationLoaderMap:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AnimationLoader;

    if-eqz p0, :cond_e

    .line 192
    check-cast p0, Lcom/android/server/wm/FreeformAnimationLoader;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .registers 1

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionController;->getFreeformAnimationLoader()Lcom/android/server/wm/FreeformAnimationLoader;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformAnimationLoader;->getFreeformContainerDefaultPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()V
    .registers 3

    .line 137
    new-instance v0, Lcom/android/server/wm/MultiTaskingTransitionController$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingTransitionController$H;-><init>(Lcom/android/server/wm/MultiTaskingTransitionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mH:Lcom/android/server/wm/MultiTaskingTransitionController$H;

    return-void
.end method

.method public isDisplayFrozenByTransaction()Z
    .registers 1

    .line 309
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    return p0
.end method

.method public loadAnimation(IZLcom/android/server/wm/WindowContainer;Lcom/android/internal/policy/TransitionAnimation;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .registers 15

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mTransitionState:Lcom/android/server/wm/MultiTaskingTransitionState;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTransitionState;->init(IZLcom/android/server/wm/WindowContainer;Lcom/android/internal/policy/TransitionAnimation;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 156
    :try_start_b
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_12
    if-ge p2, p1, :cond_34

    .line 158
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/AnimationLoader;

    .line 159
    invoke-virtual {p3}, Lcom/android/server/wm/AnimationLoader;->isAvailable()Z

    move-result p4

    if-nez p4, :cond_23

    goto :goto_31

    .line 162
    :cond_23
    invoke-virtual {p3}, Lcom/android/server/wm/AnimationLoader;->loadAnimationIfPossible()V

    .line 163
    invoke-virtual {p3}, Lcom/android/server/wm/AnimationLoader;->isAnimationLoaded()Z

    move-result p4

    if-eqz p4, :cond_31

    .line 164
    invoke-virtual {p3}, Lcom/android/server/wm/AnimationLoader;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p7
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_3a

    goto :goto_34

    :cond_31
    :goto_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 169
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mTransitionState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->reset()V

    return-object p7

    :catchall_3a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mTransitionState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->reset()V

    .line 170
    throw p1
.end method

.method public reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionController;->getFreeformAnimationLoader()Lcom/android/server/wm/FreeformAnimationLoader;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformAnimationLoader;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    :cond_9
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public startFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .registers 8

    .line 269
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->shouldFreezeDisplayInTransaction()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 273
    :cond_7
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getFreezeDisplayReason()Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    move-result v1

    .line 277
    iget-boolean v3, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    const-string v4, "MultiTaskingTransitionController"

    const/4 v5, 0x1

    if-nez v3, :cond_5f

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrozen:Z

    if-nez v3, :cond_5f

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    if-nez v3, :cond_5f

    if-eqz v1, :cond_30

    goto :goto_5f

    .line 286
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFreezingDefaultDisplay: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-boolean v5, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    .line 288
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    const v0, 0x10a00a0

    const v1, 0x10a009f

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 290
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mH:Lcom/android/server/wm/MultiTaskingTransitionController$H;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mH:Lcom/android/server/wm/MultiTaskingTransitionController$H;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 279
    :cond_5f
    :goto_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFreezingDefaultDisplay: failed, frozen="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrozen:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRotationAnimating="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_7b

    move v2, v5

    :cond_7b
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", keyguardShowing="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", freezeDisplayReason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .registers 4

    .line 295
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->shouldFreezeDisplayInTransaction()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 299
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mDisplayFrozenByTransaction:Z

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mH:Lcom/android/server/wm/MultiTaskingTransitionController$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopFreezingDefaultDisplay: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getFreezeDisplayReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTaskingTransitionController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 304
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_41
    return-void
.end method

.method public updateTaskPositionInTaskBarLocked(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionController;->getDexAnimationLoader()Lcom/android/server/wm/DexAnimationLoader;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexAnimationLoader;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V

    :cond_9
    return-void
.end method
