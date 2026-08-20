.class public Lcom/android/server/wm/WindowContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowContainer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;
.implements Lcom/android/server/wm/SurfaceFreezer$Freezable;
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContainer$IAnimationStarter;,
        Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;,
        Lcom/android/server/wm/WindowContainer$RemoteToken;,
        Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;,
        Lcom/android/server/wm/WindowContainer$SyncState;,
        Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;,
        Lcom/android/server/wm/WindowContainer$AnimationFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer<",
        "TE;>;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;",
        "Lcom/android/server/wm/SurfaceAnimator$Animatable;",
        "Lcom/android/server/wm/SurfaceFreezer$Freezable;",
        "Lcom/android/server/wm/InsetsControlTarget;"
    }
.end annotation


# static fields
.field public static final POSITION_BOTTOM:I = -0x80000000

.field public static final POSITION_TOP:I = 0x7fffffff

.field public static final SYNC_STATE_NONE:I = 0x0

.field public static final SYNC_STATE_READY:I = 0x2

.field public static final SYNC_STATE_WAITING_FOR_DRAW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mAnimationBoundsLayer:Landroid/view/SurfaceControl;

.field public mAnimationLeash:Landroid/view/SurfaceControl;

.field public mBoostRootTaskLayerForAppTransition:Z

.field public final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "TE;>;"
        }
    .end annotation
.end field

.field public mCommittedReparentToAnimationLeash:Z

.field public final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;>;"
        }
    .end annotation
.end field

.field public mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

.field public mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreeformAlpha:F

.field public mInSetOrientation:Z

.field public mInsetsStateForUdcCutout:Landroid/view/InsetsState;

.field public mIsFocusable:Z

.field public mLastDeltaRotation:I

.field public mLastLayer:I

.field public mLastMagnificationSpec:Landroid/view/MagnificationSpec;

.field public mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

.field public mLastRelativeToLayer:Landroid/view/SurfaceControl;

.field public final mLastSurfacePosition:Landroid/graphics/Point;

.field public mLaunchTaskBehind:Z

.field public final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalInsetsSourceProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedsAnimationBoundsLayer:Z

.field public mNeedsZBoost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mOrientation:I

.field public mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

.field public mParent:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mProvidedInsetsSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

.field public mReparenting:Z

.field public final mSurfaceAnimationSources:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

.field public mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public mSyncState:I
    .annotation build Lcom/android/server/wm/WindowContainer$SyncState;
    .end annotation
.end field

.field public final mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mSyncTransactionCommitCallbackDepth:I

.field public mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

.field public final mTmpChain1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpChain2:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpPoint:Landroid/graphics/Point;

.field public final mTmpPos:Landroid/graphics/Point;

.field public final mTmpPrevBounds:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTransit:I

.field public mTransitFlags:I

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;

.field public mTreeWeight:I

.field public mUseConfigurationInUdcCutout:Z

.field public mUseLayoutInUdcCutout:Z

.field public final mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$-S_g3GrlUApMRtq9uvmrNBJYX7s(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTopMostActivity$4(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0djG89FwBRaXYyXa0qrO6-bqn8o(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$5(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0tyNKo-KnbBRmtCAePF1AoexeTg(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->lambda$waitForAllWindowsDrawn$13(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$234A29yGN9FizkgSHI98SpTISjs(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTopMostTask$12(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3CBlScGI3GmooRFvV1Z3v1wS1fo(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTaskAbove$9(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6_hkr3I23L4mB0Mx_vdmFlx8srM(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CqeI7rKVQi3UNnUp9aZU2DgHMwI(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getActivityAbove$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CwOFafKDHad3hUTXlB-krkCZEVI(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LnJML3JOqm0_aVdJWDiX0PBFO5M(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTaskBelow$10(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NFtMLbOgBLgl31UGtXUGE6SmNNE(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getBottomMostTask$11(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TpqljyH9DUdS2kzPh2lIlD_qD6w(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$6(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YrlAkiQa0GkL3xT--G9kOwWFtck(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$isAppTransitioning$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZBTNA4Izorc10Fa2PsA_ODwrowQ(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getBottomMostActivity$3(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jr26c-L38rk1QuoaOZNCYvglH4s(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->lambda$getActivityBelow$2(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConsumerWrapperPool(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 371
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 175
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 184
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    .line 188
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    const/4 v1, -0x1

    .line 191
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 200
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x0

    .line 207
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 208
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 237
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 239
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 240
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 241
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    const/4 v2, 0x1

    .line 244
    iput v2, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 252
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 320
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 321
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 322
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 326
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 332
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 335
    iput v2, p0, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    .line 359
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 361
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 716
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 717
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 4267
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    .line 372
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 373
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 374
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 375
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 376
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 377
    new-instance v0, Lcom/android/server/wm/SurfaceFreezer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/SurfaceFreezer;-><init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 379
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    if-eqz p1, :cond_b8

    .line 380
    new-instance p1, Lcom/android/server/wm/DimAnimator;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DimAnimator;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    :cond_b8
    return-void
.end method

.method public static createShallowCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 435
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 436
    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 437
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .registers 1

    .line 3847
    invoke-static {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer$RemoteToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getActivityAbove$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getActivityBelow$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getBottomMostActivity$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getBottomMostTask$11(Lcom/android/server/wm/Task;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTaskAbove$9(Lcom/android/server/wm/Task;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTaskBelow$10(Lcom/android/server/wm/Task;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTopActivity$5(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTopActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTopActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 1937
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTopActivity$8(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1940
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$getTopMostActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getTopMostTask$12(Lcom/android/server/wm/Task;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$isAppTransitioning$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    const/4 v0, 0x3

    .line 1205
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$waitForAllWindowsDrawn$13(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 3739
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->requestDrawIfNeeded(Ljava/util/List;)V

    return-void
.end method

.method public static overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 4095
    new-instance v0, Lcom/android/server/wm/WindowContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowContainer$1;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 4101
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 4102
    new-instance v1, Lcom/android/server/wm/WindowContainer$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/WindowContainer$2;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ConfigurationContainerListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 758
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_52

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_52

    .line 759
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n callers="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xf

    const-string p1, "\n"

    .line 762
    invoke-static {p0, p1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_52
    :goto_52
    const/high16 v0, -0x80000000

    if-gez p2, :cond_58

    if-ne p2, v0, :cond_66

    .line 765
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 766
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p2, v1, :cond_8b

    if-ne p2, v2, :cond_66

    goto :goto_8b

    .line 767
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: invalid position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", children number="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 768
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8b
    :goto_8b
    if-ne p2, v2, :cond_94

    .line 772
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_97

    :cond_94
    if-ne p2, v0, :cond_97

    const/4 p2, 0x0

    .line 777
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 780
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 728
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_42

    .line 729
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_42
    :goto_42
    const/4 v0, -0x1

    if-eqz p2, :cond_60

    .line 736
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v1, :cond_60

    .line 738
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_5d

    goto :goto_61

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_60
    move v2, v0

    :goto_61
    if-ne v2, v0, :cond_69

    .line 746
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 748
    :cond_69
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 752
    :goto_6e
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public addLocalRectInsetsSourceProvider(Landroid/graphics/Rect;[I)V
    .registers 8

    if-eqz p2, :cond_6d

    .line 454
    array-length v0, p2

    if-eqz v0, :cond_6d

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    .line 458
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    :cond_10
    const/4 v0, 0x0

    .line 460
    :goto_11
    array-length v1, p2

    if-ge v0, v1, :cond_62

    .line 461
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v2, p2, v0

    .line 462
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v1, :cond_41

    .line 464
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v1, :cond_41

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The local insets provider for this type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already exists. Overwriting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_41
    new-instance v1, Lcom/android/server/wm/RectInsetsSourceProvider;

    new-instance v2, Landroid/view/InsetsSource;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Landroid/view/InsetsSource;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 470
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/RectInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 471
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v3, p2, v0

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RectInsetsSourceProvider;->setRect(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 474
    :cond_62
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    return-void

    .line 455
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insets type not specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 4197
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-nez v0, :cond_d

    .line 4198
    new-instance v0, Lcom/android/server/wm/TrustedOverlayHost;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TrustedOverlayHost;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 4200
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TrustedOverlayHost;->addOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/view/SurfaceControl;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4206
    :try_start_16
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_31

    .line 4208
    :catch_22
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v2, :cond_2e

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1e9da14

    invoke-static {v2, v3, v0, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4210
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :goto_31
    if-eqz p2, :cond_52

    .line 4216
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p2

    .line 4217
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4219
    :try_start_3b
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_52

    .line 4221
    :catch_43
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz p2, :cond_4f

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x4cd35f54    # 1.1082E8f

    invoke-static {p2, v2, v0, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4223
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public allSyncFinished()Z
    .registers 5

    .line 4010
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 4011
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_f

    return v3

    .line 4012
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_16
    if-ltz v0, :cond_2a

    .line 4013
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 4014
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->allSyncFinished()Z

    move-result v2

    if-nez v2, :cond_27

    return v3

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_2a
    return v1
.end method

.method public applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p0

    .line 2967
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_22

    .line 2968
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1f901cf

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v5, v6, v4, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2971
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    return v4

    :cond_22
    const-wide/16 v7, 0x20

    :try_start_24
    const-string v1, "WC#applyAnimation"

    .line 2979
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 2981
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v1, :cond_57

    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x29caf6b6

    const/16 v10, 0xc

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v2

    const/4 v1, 0x2

    aput-object v5, v11, v1

    invoke-static {v6, v9, v10, v3, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_57
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 2984
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    goto :goto_66

    .line 2986
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V
    :try_end_66
    .catchall {:try_start_24 .. :try_end_66} :catchall_6e

    .line 2989
    :goto_66
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    return v0

    :catchall_6e
    move-exception v0

    .line 2989
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2990
    throw v0
.end method

.method public applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 3170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    if-nez p2, :cond_36

    .line 3171
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-nez v2, :cond_36

    .line 3172
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 3173
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 3174
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, v0, :cond_29

    move v3, v1

    :cond_29
    if-eqz v3, :cond_36

    .line 3177
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->isTaskCloseTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3178
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot()V

    .line 3181
    :cond_36
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;

    move-result-object p1

    .line 3183
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/wm/AnimationAdapter;

    .line 3184
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/android/server/wm/AnimationAdapter;

    if-eqz p2, :cond_f1

    if-eqz p5, :cond_4c

    .line 3187
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 3190
    :cond_4c
    new-instance p1, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder-IA;)V

    .line 3192
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->isTaskTransitOld(I)Z

    move-result p4

    if-eqz p4, :cond_71

    .line 3194
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p4

    if-eqz p4, :cond_5f

    goto :goto_66

    .line 3198
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskAnimationBackgroundColor()I

    move-result p4

    invoke-static {p1, p4}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$msetTaskBackgroundColor(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;I)V

    .line 3201
    :goto_66
    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    if-eqz p4, :cond_71

    .line 3202
    iget-object p4, p4, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-static {p1, p4}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$mhideInsetSourceViewOverflows(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Ljava/util/Set;)V

    .line 3207
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    if-eqz p4, :cond_a3

    .line 3208
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->isActivityTransitOld(I)Z

    move-result p3

    if-eqz p3, :cond_a3

    .line 3209
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->getShowBackground()Z

    move-result p3

    if-eqz p3, :cond_a3

    .line 3211
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result p3

    if-eqz p3, :cond_8e

    .line 3214
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result p3

    goto :goto_a0

    .line 3219
    :cond_8e
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    .line 3221
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p3

    const/16 p5, 0xff

    .line 3220
    invoke-static {p3, p5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    .line 3223
    :goto_a0
    invoke-static {p1, p3}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$msetTaskBackgroundColor(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;I)V

    .line 3226
    :cond_a3
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p3, :cond_ce

    if-eqz p4, :cond_ce

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p3

    if-eqz p3, :cond_ce

    .line 3227
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p3}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object p3

    if-eqz p3, :cond_ce

    .line 3230
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    if-eqz p3, :cond_ce

    .line 3231
    iget-object p4, p3, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p4}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result p4

    if-eqz p4, :cond_ce

    .line 3232
    iget-object p3, p3, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 3237
    :cond_ce
    invoke-static {p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->-$$Nest$mbuild(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)Lcom/android/server/wm/WindowContainer$IAnimationStarter;

    move-result-object v2

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    const/4 v6, 0x1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/wm/WindowContainer$IAnimationStarter;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/AnimationAdapter;)V

    .line 3241
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_f1
    return-void
.end method

.method public applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .registers 10

    .line 2721
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2722
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v6

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 2723
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2724
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_38

    .line 2726
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 2727
    :goto_22
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 2728
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_38
    :goto_38
    return-void
.end method

.method public asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asTask()Lcom/android/server/wm/Task;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public asWindowToken()Lcom/android/server/wm/WindowToken;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public assignChildLayers()V
    .registers 2

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2607
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 2608
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 2609
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 2610
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v4

    if-nez v4, :cond_22

    add-int/lit8 v4, v2, 0x1

    .line 2611
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v4

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2614
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 2615
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 2616
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_41

    add-int/lit8 v3, v2, 0x1

    .line 2617
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v3

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2620
    :cond_44
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz p0, :cond_4b

    .line 2621
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TrustedOverlayHost;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_4b
    return-void
.end method

.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 2545
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2546
    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 2547
    :goto_15
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 2548
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 2549
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    const/4 p1, 0x0

    .line 2550
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    :cond_23
    return-void
.end method

.method public assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5

    const/4 v0, 0x0

    .line 2565
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void
.end method

.method public assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .registers 7

    .line 2556
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p3, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eq v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 2557
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1b

    if-nez v0, :cond_14

    if-eqz p4, :cond_1b

    .line 2558
    :cond_14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 2559
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 2560
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    :cond_1b
    return-void
.end method

.method public canBeAnimationTarget()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canCreateRemoteAnimationTarget()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canCustomizeAppTransition()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canStartChangeTransition()Z
    .registers 2

    .line 2863
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_42

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    move-result v0

    if-nez v0, :cond_42

    .line 2865
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 2868
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method public canUseRemoteAnimation()Z
    .registers 4

    .line 4347
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 4350
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 4351
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result p0

    if-eqz p0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 4353
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_28

    return v1

    :cond_28
    return v2
.end method

.method public cancelAnimation()V
    .registers 3

    .line 2856
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2857
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 2858
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public checkAppWindowsReadyToShow()V
    .registers 3

    .line 1393
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1394
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1395
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 2734
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_17

    .line 2735
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 2736
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_17
    const/4 v0, 0x0

    .line 2738
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v0, 0x0

    .line 2739
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 2740
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method public clearSyncState()V
    .registers 2

    const/4 v0, 0x0

    .line 3968
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v0, 0x0

    .line 3969
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method

.method public commitPendingTransaction()V
    .registers 1

    .line 3405
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 9

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 2434
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1d

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_1d

    .line 2435
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2436
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p0, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 2439
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 2440
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 2442
    :try_start_21
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 2443
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    const/4 v4, 0x0

    .line 2447
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 2448
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    :goto_34
    if-eqz v5, :cond_50

    if-eqz v6, :cond_50

    if-ne v5, v6, :cond_50

    .line 2450
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 2451
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2452
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 2453
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_a2

    goto :goto_34

    :cond_50
    if-eqz v4, :cond_83

    if-ne v4, p0, :cond_5f

    .line 2476
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 2477
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return v2

    :cond_5f
    if-ne v4, p1, :cond_6c

    .line 2476
    :goto_61
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 2477
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return v1

    .line 2472
    :cond_6c
    :try_start_6c
    iget-object p1, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2473
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le v0, p1, :cond_81

    goto :goto_61

    :cond_81
    move v1, v2

    goto :goto_61

    .line 2458
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in the same hierarchy this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " other="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a2
    .catchall {:try_start_6c .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p1

    .line 2476
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2477
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 2478
    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 147
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSurfaceControl(Z)V
    .registers 2

    .line 648
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public final doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    const/4 v0, 0x0

    .line 3482
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 3483
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3485
    :cond_17
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 3486
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p2, :cond_23

    .line 3487
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/DisplayContent;->onWindowAnimationFinished(Lcom/android/server/wm/WindowContainer;I)V

    :cond_23
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    .line 3608
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 3609
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "ContainerAnimator:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wm/SurfaceAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3612
    :cond_26
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    if-eqz p3, :cond_62

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p0, p3, :cond_62

    .line 3613
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mLastOrientationSource="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "deepestLastOrientationSource="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    :cond_62
    iget-boolean p3, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    if-nez p3, :cond_6a

    iget-boolean p3, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    if-eqz p3, :cond_ad

    .line 3618
    :cond_6a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "UdcCutoutInfo:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mUseLayoutInUdcCutout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mUseConfigurationInUdcCutout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3621
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_ad
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11

    .line 2653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    return-void

    .line 2658
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10b00000001L

    .line 2659
    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/ConfigurationContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v1, 0x10500000002L

    .line 2660
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000003L

    .line 2661
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b00000006L

    .line 2662
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2663
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2664
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2666
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4e

    const-wide v1, 0x10b00000007L

    .line 2667
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4e
    const/4 v0, 0x0

    .line 2671
    :goto_4f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6f

    const-wide v1, 0x20b00000005L

    .line 2672
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2673
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2674
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getProtoFieldId()J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2675
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 2677
    :cond_6f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public endDelayingAnimationStart()V
    .registers 1

    .line 3593
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    return-void
.end method

.method public fillsParent()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public finishSync(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 11

    .line 3957
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_5

    return-void

    .line 3958
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x161fa956

    const/4 v4, 0x3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v1

    const-string v0, "finishSync cancel=%b for %s"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3959
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 3960
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_31
    if-ltz v0, :cond_41

    .line 3961
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    :cond_41
    if-eqz p2, :cond_4a

    .line 3963
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eqz p1, :cond_4a

    invoke-virtual {p1, p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onCancelSync(Lcom/android/server/wm/WindowContainer;)V

    .line 3964
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearSyncState()V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1735
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1a

    .line 1740
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_31

    .line 1741
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1744
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_31

    .line 1746
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method public forAllActivities(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1716
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public final forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1763
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result p0

    return p0
.end method

.method public final forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)Z"
        }
    .end annotation

    move-object v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p4, :cond_2a

    .line 1771
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v10, v0

    :goto_d
    if-ltz v10, :cond_4e

    .line 1772
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1773
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 1772
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowContainer;->processForAllActivitiesWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v9

    :cond_27
    add-int/lit8 v10, v10, -0x1

    goto :goto_d

    .line 1778
    :cond_2a
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v8

    :goto_31
    if-ge v11, v10, :cond_4e

    .line 1780
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1781
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 1780
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowContainer;->processForAllActivitiesWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_4b

    return v9

    :cond_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_31

    :cond_4e
    return v8
.end method

.method public forAllActivities(Ljava/util/function/Predicate;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 1721
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_b
    if-ltz v2, :cond_3a

    .line 1722
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1725
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_26
    if-ge v3, v2, :cond_3a

    .line 1727
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    return v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_3a
    return v0
.end method

.method public forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 2260
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2261
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 2073
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1a

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2b

    .line 2076
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 2080
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)Z"
        }
    .end annotation

    .line 1974
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1975
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 2060
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1a

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2b

    .line 2063
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 2067
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 1965
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1966
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public forAllRootTasks(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2091
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 2095
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1a

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_34

    .line 2098
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_34

    .line 2102
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 2105
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1b

    :cond_34
    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1989
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)Z"
        }
    .end annotation

    .line 1993
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1f

    sub-int/2addr v0, v2

    :goto_b
    if-ltz v0, :cond_3c

    .line 1996
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1f
    move v3, v1

    :goto_20
    if-ge v3, v0, :cond_3c

    .line 2002
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v4

    if-eqz v4, :cond_31

    return v2

    .line 2007
    :cond_31
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    move v0, v4

    goto :goto_20

    :cond_3c
    return v1
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2320
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    .line 2306
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ltz v1, :cond_22

    if-ge v1, v0, :cond_22

    .line 2309
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    if-eqz p2, :cond_1f

    const/4 v2, -0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x1

    :goto_20
    add-int/2addr v1, v2

    goto :goto_c

    :cond_22
    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2296
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)Z"
        }
    .end annotation

    .line 2276
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    add-int/lit8 v2, v0, -0x1

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    if-ltz v2, :cond_26

    if-ge v2, v0, :cond_26

    .line 2279
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    return v4

    :cond_21
    if-eqz p2, :cond_24

    const/4 v4, -0x1

    :cond_24
    add-int/2addr v2, v4

    goto :goto_d

    :cond_26
    return v1
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2043
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 2047
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1a

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2b

    .line 2050
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 2054
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public forAllTasks(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2021
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1a

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2b

    .line 2028
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 2032
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 1956
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1957
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public forAllWallpaperWindows(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 1944
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1945
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public forAllWindowContainers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 1675
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1676
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 1678
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindowContainers(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public forAllWindows(Ljava/util/function/Consumer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .line 1710
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object p1

    .line 1711
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 1712
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    return-void
.end method

.method public forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 1693
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_b
    if-ltz v2, :cond_3a

    .line 1694
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1699
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_26
    if-ge v3, v2, :cond_3a

    .line 1701
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    return v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_3a
    return v0
.end method

.method public getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1817
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1866
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    if-eqz p4, :cond_25

    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_47

    .line 1875
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1876
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 1875
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowContainer;->processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1882
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_47

    .line 1884
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1885
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 1884
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowContainer;->processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_44

    return-object v2

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1821
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    if-eqz p2, :cond_21

    .line 1827
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_3f

    .line 1828
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-ne v1, p3, :cond_17

    return-object p3

    .line 1832
    :cond_17
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1838
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_3f

    .line 1840
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-ne v2, p3, :cond_35

    return-object p3

    .line 1844
    :cond_35
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3c

    return-object v2

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1912
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda10;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1917
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda6;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getAnimatingContainer()Lcom/android/server/wm/WindowContainer;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 3579
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;
    .registers 6

    .line 3534
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1d

    .line 3538
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_1d

    .line 3540
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    .line 3543
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_f

    :cond_1d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 3547
    :goto_22
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 3548
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    and-int/lit8 v2, p1, -0x3

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_3b

    return-object v1

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 1

    .line 3504
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ)",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/AnimationAdapter;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 3010
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    move v12, v6

    goto :goto_18

    .line 3014
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppRootTaskClipMode()I

    move-result v2

    move v12, v2

    .line 3018
    :goto_18
    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 3019
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3020
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isTaskTransitOld(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->adjustAnimationBoundsForTransition(Landroid/graphics/Rect;)V

    .line 3023
    :cond_36
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getAnimationPosition(Landroid/graphics/Point;)V

    .line 3025
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6e

    .line 3026
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_60

    .line 3027
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 3028
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v2

    if-eqz v2, :cond_60

    move v2, v6

    goto :goto_61

    :cond_60
    move v2, v3

    :goto_61
    if-nez v2, :cond_6e

    .line 3030
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Point;->set(II)V

    .line 3035
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 3036
    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_85

    .line 3038
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isInternalPresentationOnly()Z

    move-result v2

    goto :goto_95

    .line 3040
    :cond_85
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 3042
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isInternalPresentationOnly()Z

    move-result v2

    goto :goto_95

    :cond_94
    move v2, v3

    .line 3047
    :goto_95
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3050
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v5

    .line 3051
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v7

    if-eqz v7, :cond_b2

    if-eqz p3, :cond_b2

    .line 3052
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v7

    if-nez v7, :cond_b8

    .line 3053
    :cond_b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v7

    if-eqz v7, :cond_ba

    :cond_b8
    move v7, v6

    goto :goto_bb

    :cond_ba
    move v7, v3

    :goto_bb
    const/4 v11, 0x0

    if-eqz v5, :cond_175

    .line 3056
    iget-object v8, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v8

    if-nez v8, :cond_175

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->canUseRemoteAnimation()Z

    move-result v8

    if-eqz v8, :cond_175

    .line 3059
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REVERSE_REMOTE_ANIMATION:Z

    if-eqz v2, :cond_142

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    if-nez v0, :cond_142

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 3060
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    if-eqz v0, :cond_142

    .line 3061
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v0, :cond_142

    .line 3063
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 3064
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 3066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimationAdapter, try not to use new remote anim, oldAnimPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mOuterRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 3067
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newAnimPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 3068
    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    .line 3066
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mOuterRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    iget-object v2, v5, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 3071
    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v2

    if-ne v0, v2, :cond_142

    .line 3072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnimationAdapter, not to use new remote anim, container="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v11, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 3080
    :cond_142
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3081
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3082
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    if-eqz v7, :cond_15b

    .line 3084
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    move-object v11, v0

    :cond_15b
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v5, v11

    .line 3083
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-result-object v0

    if-nez v7, :cond_16a

    xor-int/lit8 v1, p3, 0x1

    .line 3086
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->setMode(I)V

    .line 3090
    :cond_16a
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2a2

    :cond_175
    if-eqz v7, :cond_201

    .line 3092
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 3094
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3097
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v5, v5, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1a3

    .line 3098
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v6, v6, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3102
    :cond_1a3
    new-instance v5, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v6, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v14, v7, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v13, v6

    move-object/from16 v16, v4

    move/from16 v17, v3

    move-object/from16 v20, v7

    move/from16 v21, v2

    invoke-direct/range {v13 .. v21}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZLcom/android/server/wm/SurfaceFreezer;Z)V

    .line 3108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 3110
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v6, v6, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-eqz v6, :cond_1eb

    .line 3111
    new-instance v11, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v6, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v14, v7, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v13, v6

    move-object/from16 v16, v4

    move/from16 v17, v3

    move-object/from16 v20, v7

    move/from16 v21, v2

    invoke-direct/range {v13 .. v21}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZLcom/android/server/wm/SurfaceFreezer;Z)V

    .line 3116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v2

    invoke-direct {v11, v6, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 3118
    :cond_1eb
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3119
    iput v0, v1, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    move-object v1, v2

    goto/16 :goto_2a2

    :cond_201
    if-nez v12, :cond_205

    move v2, v6

    goto :goto_206

    :cond_205
    move v2, v3

    .line 3122
    :goto_206
    iput-boolean v2, v1, Lcom/android/server/wm/WindowContainer;->mNeedsAnimationBoundsLayer:Z

    .line 3123
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/wm/WindowContainer;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_29c

    .line 3128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_21d

    .line 3129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    goto :goto_21e

    :cond_21d
    const/4 v4, 0x0

    :goto_21e
    move v14, v4

    .line 3132
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3133
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionResumedAffordanceRequested()Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 3134
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    .line 3136
    :cond_22e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_249

    .line 3137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isOpeningAboveDismissingSplit()Z

    move-result v4

    if-eqz v4, :cond_249

    .line 3138
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3138
    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/ChangeTransitionController;->handleOpeningAboveDismissingSplit(Lcom/android/server/wm/Task;Landroid/view/animation/Animation;)V

    .line 3142
    :cond_249
    new-instance v4, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v5, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 3144
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v13

    const/4 v15, 0x1

    move-object v7, v5

    move-object v8, v2

    move-object v3, v11

    move v11, v13

    move v13, v15

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    .line 3146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 3148
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3149
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v2

    if-eq v2, v6, :cond_28a

    .line 3150
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isClosingTransitOld(I)Z

    move-result v2

    if-eqz v2, :cond_289

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3156
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionNone()Z

    move-result v2

    if-eqz v2, :cond_28a

    if-nez p3, :cond_289

    goto :goto_28a

    :cond_289
    const/4 v6, 0x0

    :cond_28a
    :goto_28a
    iput-boolean v6, v1, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3158
    iput v0, v1, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 3159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    move-object v1, v5

    goto :goto_2a2

    :cond_29c
    move-object v3, v11

    .line 3161
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2a2
    return-object v1
.end method

.method public getAnimationBounds(I)Landroid/graphics/Rect;
    .registers 2

    .line 2941
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 3710
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    .line 3711
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3712
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3713
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3714
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 3478
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 1

    .line 2935
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationPosition(Landroid/graphics/Point;)V
    .registers 2

    .line 2946
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    return-void
.end method

.method public getAnimationSources()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 2908
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1922
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda13;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getBottomMostTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2122
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda11;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-object p0
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 1

    .line 3744
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 3747
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 1077
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 3

    .line 2914
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 2915
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1b

    .line 2918
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/DisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 2375
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 2376
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2421
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 2397
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ltz v1, :cond_26

    if-ge v1, v0, :cond_26

    .line 2400
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2401
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    :cond_1f
    if-eqz p2, :cond_23

    const/4 v2, -0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x1

    :goto_24
    add-int/2addr v1, v2

    goto :goto_c

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastLayer()I
    .registers 1

    .line 2581
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    return p0
.end method

.method public getLastOrientationSource()Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 1636
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 1638
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    return-object v0
.end method

.method public getLastSurfacePosition()Landroid/graphics/Point;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3694
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    return-object p0
.end method

.method getOrientation()I
    .registers 2

    .line 1554
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result p0

    return p0
.end method

.method public getOrientation(I)I
    .registers 14

    const/4 v0, 0x0

    .line 1569
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_b

    return v2

    .line 1578
    :cond_b
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v3, -0x1

    if-eq v1, v2, :cond_15

    if-eq v1, v3, :cond_15

    .line 1580
    iput-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return v1

    .line 1584
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_1d
    if-ltz v1, :cond_92

    .line 1585
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1587
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v6, :cond_44

    .line 1588
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    .line 1590
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1589
    invoke-virtual {v6, v7}, Lcom/android/server/wm/OrientationController;->getAdjustedOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    if-eq v6, v2, :cond_44

    .line 1592
    iput-object v5, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 1593
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientationControlSource:Lcom/android/server/wm/WindowContainer;

    return v6

    :cond_44
    const/4 v6, 0x3

    if-ne p1, v6, :cond_49

    move v7, v6

    goto :goto_4a

    :cond_49
    move v7, v2

    .line 1601
    :goto_4a
    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v7

    if-ne v7, v6, :cond_54

    .line 1608
    iput-object v5, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    move p1, v7

    goto :goto_60

    :cond_54
    if-ne v7, v2, :cond_57

    goto :goto_60

    .line 1616
    :cond_57
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    move-result v8

    if-nez v8, :cond_63

    if-eq v7, v3, :cond_60

    goto :goto_63

    :cond_60
    :goto_60
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1619
    :cond_63
    :goto_63
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz p1, :cond_8f

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v1, v7

    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x42169418

    const/4 v10, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v4

    const/4 p1, 0x2

    aput-object v3, v6, p1

    invoke-static {v8, v9, v10, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1622
    :cond_8f
    iput-object v5, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return v7

    :cond_92
    return p1
.end method

.method public bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 1

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getParent()Lcom/android/server/wm/WindowContainer;
    .registers 1

    .line 521
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 2512
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2516
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public final getParents(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2482
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 2485
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2486
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez p0, :cond_3

    return-void
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 2801
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 2803
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0

    .line 2809
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public getPrefixOrderIndex()I
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 885
    :cond_6
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public final getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 890
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 891
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-ne p1, v2, :cond_15

    goto :goto_1b

    .line 895
    :cond_15
    iget v2, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 897
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_24

    .line 898
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    add-int/2addr v1, p0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000002L

    return-wide v0
.end method

.method public getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 1071
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    .line 1073
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getRelativeDisplayRotation()I
    .registers 2

    .line 3730
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3732
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p0

    .line 3733
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 3734
    invoke-static {p0, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    return p0
.end method

.method public getRelativePosition(Landroid/graphics/Point;)V
    .registers 4

    .line 3718
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3719
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 3720
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 3722
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 3723
    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->offset(II)V

    :cond_1e
    return-void
.end method

.method public getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestedConfigurationOrientation()I
    .registers 2

    const/4 v0, 0x0

    .line 1450
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(Z)I

    move-result p0

    return p0
.end method

.method public getRequestedConfigurationOrientation(Z)I
    .registers 4

    .line 1467
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-eqz p1, :cond_16

    if-eqz v1, :cond_16

    .line 1469
    invoke-virtual {v1}, Lcom/android/server/wm/RootDisplayArea;->isOrientationDifferentFromDisplay()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1477
    iget p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result v0

    :cond_16
    const/4 p1, 0x5

    if-ne v0, p1, :cond_22

    .line 1482
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_3d

    .line 1483
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result p0

    return p0

    :cond_22
    const/16 p1, 0xe

    if-ne v0, p1, :cond_2d

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0

    .line 1488
    :cond_2d
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x2

    return p0

    .line 1490
    :cond_35
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2202
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 2207
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1e

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_3c

    .line 2210
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_3c

    .line 2217
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_30

    return-object v2

    .line 2223
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1f

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2537
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;
    .registers 1

    .line 3267
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 2777
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceHeight()I
    .registers 1

    .line 3603
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result p0

    return p0
.end method

.method public getSurfaceWidth()I
    .registers 1

    .line 3598
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result p0

    return p0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 2789
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    if-lez v0, :cond_7

    .line 2790
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0

    .line 2792
    :cond_7
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_e

    .line 2793
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0

    .line 2796
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2130
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2166
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    if-eqz p4, :cond_25

    .line 2173
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_47

    .line 2174
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 2174
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowContainer;->processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2181
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_47

    .line 2183
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2184
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 2183
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowContainer;->processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_44

    return-object v2

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    if-eqz p2, :cond_1e

    .line 2135
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_39

    .line 2136
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2142
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_39

    .line 2144
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_36

    return-object v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 4

    .line 2113
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda12;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getTaskAnimationBackgroundColor()I
    .registers 3

    .line 3248
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 3249
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    const v1, 0x106025c

    .line 3250
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    if-eqz p0, :cond_1c

    .line 3252
    iget p0, p0, Landroid/view/TaskTransitionSpec;->backgroundColor:I

    if-eqz p0, :cond_1c

    return p0

    .line 3257
    :cond_1c
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM:Z

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    return v0
.end method

.method public getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 5

    .line 2118
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda9;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    if-eqz p1, :cond_18

    if-eqz p2, :cond_e

    .line 1933
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 1935
    :cond_e
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_18
    if-eqz p2, :cond_24

    .line 1937
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 1940
    :cond_24
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopChild()Lcom/android/server/wm/WindowContainer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1364
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getTopMostActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1926
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopMostTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2126
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda7;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTreeWeight()I
    .registers 1

    .line 875
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    return p0
.end method

.method public getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 2250
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method getWindowType()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 5

    .line 1375
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ltz v0, :cond_23

    .line 1376
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1377
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v3

    if-nez v3, :cond_20

    return v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_23
    return v2
.end method

.method public handlesOrientationChangeFromDescendant()Z
    .registers 1

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasActivity()Z
    .registers 4

    .line 1808
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1809
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1f

    .line 923
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-eq v2, p1, :cond_1e

    .line 924
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public hasCommittedReparentToAnimationLeash()Z
    .registers 1

    .line 2758
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    return p0
.end method

.method public hasContentToDisplay()Z
    .registers 4

    .line 1259
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1260
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1261
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public hasNonAppWindowAnimationAdapter()Z
    .registers 1

    .line 3427
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object p0

    instance-of p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    return p0
.end method

.method public hasRelativeLayer()Z
    .registers 3

    .line 4296
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2a

    .line 4297
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    .line 4298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasRelativeLayer() this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastRelativeToLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p0, 0x1

    return p0

    .line 4303
    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez p0, :cond_30

    const/4 p0, 0x0

    return p0

    .line 4306
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

    move-result p0

    return p0
.end method

.method public inTransition()Z
    .registers 2

    .line 1223
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public final inUdcCutoutMode()Z
    .registers 1

    .line 4316
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz p0, :cond_10

    .line 4317
    invoke-virtual {p0}, Lcom/android/server/wm/UdcCutoutPolicy;->hasUdcCutout()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public initializeChangeTransition(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x0

    .line 2904
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 10

    .line 2888
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 2889
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2891
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2892
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 2894
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2895
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 2896
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInternalPresentationOnly()Z

    move-result v6

    move-object v3, p1

    move-object v5, p2

    .line 2895
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;Z)V

    goto :goto_4b

    .line 2899
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;)V

    :goto_4b
    return-void
.end method

.method public final isAnimating()Z
    .registers 2

    const/4 v0, 0x0

    .line 1212
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    return p0
.end method

.method public final isAnimating(I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 1189
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public final isAnimating(II)Z
    .registers 3

    .line 1180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isAppTransitioning()Z
    .registers 2

    .line 1205
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isAttached()Z
    .registers 1

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isChangingAppTransition()Z
    .registers 2

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isConfigurationNeededInUdcCutout()Z
    .registers 2

    .line 4325
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inUdcCutoutMode()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 933
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    :cond_8
    if-eqz p0, :cond_11

    .line 935
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isEmbedded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isExitAnimationRunningSelfOrChild()Z
    .registers 4

    .line 1227
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x5

    const/16 v1, 0x19

    .line 1228
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0

    .line 1230
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    return v1

    .line 1234
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_21
    if-ltz v0, :cond_35

    .line 1235
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1236
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    move-result v2

    if-eqz v2, :cond_32

    return v1

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method isFocusable()Z
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1342
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isLayoutNeededInUdcCutout()Z
    .registers 2

    .line 4321
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inUdcCutoutMode()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isOnTop()Z
    .registers 3

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1359
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isOrganized()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRelativeTo(Landroid/view/SurfaceControl;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 4366
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isSelfAnimating(II)Z
    .registers 5

    .line 3563
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 3564
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    and-int/2addr p2, v0

    if-lez p2, :cond_13

    return v1

    :cond_13
    and-int/2addr p1, v1

    if-eqz p1, :cond_1d

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isWaitingForTransitionStart()Z

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public isSplitEmbedded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSyncFinished()Z
    .registers 7

    .line 3980
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 3983
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_f

    .line 3984
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 3986
    :cond_f
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    return v2

    .line 3991
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1c
    if-ltz v0, :cond_3f

    .line 3992
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3993
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3994
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_39

    return v1

    :cond_39
    if-nez v4, :cond_3c

    return v2

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_3f
    return v1
.end method

.method public isVisible()Z
    .registers 4

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1283
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1284
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleRequested()Z
    .registers 4

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1298
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1299
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isWaitingForTransitionStart()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .registers 28

    move-object/from16 v14, p0

    .line 3272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_29

    .line 3274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v13, :cond_29

    .line 3275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_29

    .line 3277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_28

    .line 3278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    return-object v15

    .line 3288
    :cond_29
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 3289
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Lcom/android/server/wm/PopOverState;->applyOptionsAnimationIfNeeded(I)V

    goto :goto_3d

    :cond_3b
    move/from16 v12, p2

    .line 3293
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3294
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 3295
    iget v11, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 3296
    iget v10, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 3297
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_5e

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x5e6e0e83

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-static {v4, v5, v9, v15, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3301
    :cond_5e
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3302
    new-instance v7, Landroid/graphics/Rect;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v7, v9, v9, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3304
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3305
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3306
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3307
    invoke-virtual {v14, v8, v6, v5, v4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3309
    iget-boolean v2, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_84

    move v3, v9

    goto :goto_86

    :cond_84
    move/from16 v3, p3

    .line 3318
    :goto_86
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:Z

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v2, :cond_c2

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v13, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v21, 0x1

    aput-object v2, v1, v21

    aput-object v18, v1, v17

    aput-object v19, v1, v16

    const/4 v2, 0x4

    aput-object v20, v1, v2

    const-string v2, "Loading animation for app transition. transit=%s enter=%b frame=%s insets=%s surfaceInsets=%s"

    const v9, -0x2f2cbe3e

    invoke-static {v15, v9, v13, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c4

    :cond_c2
    move/from16 v21, v13

    .line 3332
    :goto_c4
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3333
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v9, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v15

    move-object v0, v1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 p1, v3

    move-object/from16 v19, v4

    move v4, v9

    move-object/from16 v20, v5

    move v5, v13

    move-object v9, v6

    move-object v6, v8

    move-object/from16 v22, v8

    move-object v8, v9

    const/16 v18, 0x0

    move-object/from16 v9, v19

    move v13, v10

    move-object/from16 v10, v20

    move v14, v11

    move/from16 v11, p4

    move v12, v15

    move v15, v13

    move/from16 v19, v21

    move-object/from16 v13, p0

    .line 3333
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_194

    const-wide/16 v1, 0xbb8

    .line 3341
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 3343
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 3344
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_13f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2dd9597a

    const/16 v8, 0x10

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v18

    aput-object v2, v9, v19

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v17

    aput-object v5, v9, v16

    const/4 v1, 0x0

    invoke-static {v6, v7, v8, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3349
    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_175

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v1}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_175

    .line 3351
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isTaskTransitOld(I)Z

    move-result v1

    if-nez v1, :cond_15d

    .line 3352
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 3354
    :cond_15d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3355
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v2, v1, v14, v15}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_180

    .line 3358
    :cond_175
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3359
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 3360
    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_180
    move-object/from16 v1, p0

    .line 3362
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3364
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ANIMATION:Z

    if-eqz v1, :cond_194

    move/from16 v9, p1

    .line 3365
    invoke-static {v0, v9}, Lcom/android/server/wm/CustomLetterboxConfiguration;->adjustAnimationDurationIfNeeded(Landroid/view/animation/Animation;Z)V

    :cond_194
    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 1

    .line 2930
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2503
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2504
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2492
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 676
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v3, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_2e
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3d

    .line 689
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_44

    .line 691
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 694
    :goto_44
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_62

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 697
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 701
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_6b

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TrustedOverlayHost;->setParent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 705
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public needsBoostRootTaskLayerForAppTransition()Z
    .registers 5

    .line 4284
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    .line 4285
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 4286
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsBoostRootTaskLayerForAppTransition()Z

    move-result v3

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    return v0
.end method

.method public needsZBoost()Z
    .registers 5

    .line 2631
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    .line 2632
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 2633
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    return v0
.end method

.method public final obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;"
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    if-nez v0, :cond_10

    .line 2691
    new-instance v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper-IA;)V

    .line 2693
    :cond_10
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public okToAnimate()Z
    .registers 2

    const/4 v0, 0x0

    .line 3395
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate(ZZ)Z

    move-result p0

    return p0
.end method

.method public okToAnimate(ZZ)Z
    .registers 3

    .line 3399
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 3400
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->okToAnimate(ZZ)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public okToDisplay()Z
    .registers 1

    .line 3390
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 3391
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    .line 3495
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3496
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    const/4 p1, 0x0

    .line 3497
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    const/4 v0, -0x1

    .line 3446
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 3447
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 3448
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 3451
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 3454
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    if-eqz p2, :cond_14

    .line 3455
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimAnimator;->startDimAnimation(Landroid/view/SurfaceControl$Transaction;)V

    :cond_14
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, -0x1

    .line 3462
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 3463
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationLeashLost(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 3464
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    .line 3465
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 3466
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 3467
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 3470
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    if-eqz p1, :cond_21

    .line 3471
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    :cond_21
    return-void
.end method

.method public onAppTransitionDone()V
    .registers 3

    const/4 v0, 0x0

    .line 1402
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setBoostRootTaskLayerForAppTransition(Z)V

    .line 1405
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    .line 1406
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1407
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public final onChildAdded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 784
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 785
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_19

    .line 787
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 788
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 790
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    return-void
.end method

.method public final onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 812
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 813
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_19

    .line 815
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 816
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 818
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public onChildVisibilityRequested(Z)V
    .registers 4

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_20

    :cond_15
    if-nez p1, :cond_20

    .line 1319
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 1322
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildVisibilityRequested(Z)V

    :cond_29
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 536
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 538
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 539
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz p1, :cond_14

    .line 540
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_14
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 1419
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1423
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public onDescendantOverrideConfigurationChanged()V
    .registers 1

    .line 1034
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p0, :cond_7

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    :cond_7
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v0, :cond_5

    goto :goto_18

    :cond_5
    if-eqz v0, :cond_18

    .line 1051
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 1056
    :cond_18
    :goto_18
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_27

    if-eq p1, p0, :cond_27

    .line 1058
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1060
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2f
    if-ltz v0, :cond_3f

    .line 1061
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1062
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1064
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_47
    if-ltz v0, :cond_57

    .line 1065
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/WindowContainerListener;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    :cond_57
    return-void
.end method

.method public onMovedByResize()V
    .registers 3

    .line 1132
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1133
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1134
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 4

    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V
    .registers 4

    .line 621
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 622
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez p1, :cond_8

    return-void

    .line 626
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    goto :goto_1c

    .line 635
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :goto_1c
    if-eqz p3, :cond_21

    .line 639
    invoke-interface {p3}, Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;->onPreAssignChildLayers()V

    .line 643
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 644
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public onParentResize()V
    .registers 2

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1128
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1012
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1013
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1012
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 1014
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1015
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_14

    .line 1016
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    :cond_14
    if-nez v0, :cond_17

    return-void

    :cond_17
    const/4 p1, 0x2

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1f

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    goto :goto_22

    .line 1026
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    :goto_22
    return-void
.end method

.method public onResize()V
    .registers 3

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1114
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1115
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onSurfaceShown(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method

.method public onSyncFinishedDrawing()Z
    .registers 6

    .line 3893
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x2

    .line 3894
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 3895
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3896
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x725d1383

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string/jumbo p0, "onSyncFinishedDrawing %s"

    invoke-static {v0, v3, v1, p0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    return v2
.end method

.method public final onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    if-eqz p2, :cond_6

    .line 4027
    iget v0, p2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_47

    .line 4028
    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    if-nez p2, :cond_3b

    .line 4033
    iget p2, p1, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz p2, :cond_18

    .line 4035
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    goto :goto_23

    .line 4036
    :cond_18
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eqz p1, :cond_24

    .line 4039
    invoke-virtual {p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->getOrphanTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    :goto_23
    return-void

    .line 4041
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This container is in sync mode without a sync group: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4045
    :cond_3b
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-nez p1, :cond_47

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void

    .line 4060
    :cond_47
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_52

    const/4 p1, 0x0

    .line 4061
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 4063
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    return-void
.end method

.method public onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 4255
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    if-lez v0, :cond_9

    return-void

    .line 4259
    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_e

    return-void

    .line 4263
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public onUnfrozen()V
    .registers 2

    .line 2923
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    .line 2924
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .line 950
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_7e

    .line 956
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    if-lt p1, v0, :cond_17

    move p1, v3

    goto :goto_1a

    :cond_17
    if-gtz p1, :cond_1a

    move p1, v2

    :cond_1a
    :goto_1a
    if-eq p1, v2, :cond_59

    if-eq p1, v3, :cond_34

    .line 990
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-eq p3, p1, :cond_7d

    .line 991
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 992
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 993
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_7d

    .line 964
    :cond_34
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_49

    .line 965
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 966
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    :cond_49
    if-eqz p3, :cond_7d

    .line 969
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 970
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1, v3, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_7d

    .line 975
    :cond_59
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_6e

    .line 976
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 977
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 978
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    :cond_6e
    if-eqz p3, :cond_7d

    .line 980
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 981
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_7d
    :goto_7d
    return-void

    .line 951
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "positionChildAt: container="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a child of container="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " current parent="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareSurfaces()V
    .registers 3

    .line 2747
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    const/4 v0, 0x0

    .line 2748
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 2749
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public prepareSync()Z
    .registers 4

    .line 3922
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 3923
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 3926
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 3927
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 3928
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->useBLASTSync()Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    .line 3933
    :cond_2b
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_30

    return v1

    .line 3937
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_36
    if-ltz v0, :cond_42

    .line 3938
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3939
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_42
    const/4 v0, 0x2

    .line 3941
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    return v1
.end method

.method public final processForAllActivitiesWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-ne p6, p2, :cond_9

    const/4 v0, 0x1

    .line 1794
    aput-boolean v0, p5, p0

    if-nez p3, :cond_9

    return p0

    .line 1798
    :cond_9
    aget-boolean p0, p5, p0

    if-eqz p0, :cond_12

    .line 1799
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0

    :cond_12
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1802
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result p0

    return p0
.end method

.method public final processGetActivityWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eq p6, p2, :cond_5

    if-nez p2, :cond_c

    :cond_5
    const/4 v0, 0x1

    .line 1899
    aput-boolean v0, p5, p0

    if-nez p3, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 1903
    :cond_c
    aget-boolean p0, p5, p0

    if-eqz p0, :cond_15

    .line 1904
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_15
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1907
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final processGetTaskWithBoundary(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[ZLcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            "ZZ[Z",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eq p6, p2, :cond_5

    if-nez p2, :cond_c

    :cond_5
    const/4 v0, 0x1

    .line 2236
    aput-boolean v0, p5, p0

    if-nez p3, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 2240
    :cond_c
    aget-boolean p0, p5, p0

    if-eqz p0, :cond_15

    .line 2241
    invoke-virtual {p6, p1, p4}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_15
    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2244
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public providesOrientation()Z
    .registers 1

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result p0

    return p0
.end method

.method public reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 3419
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 3421
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    return-void
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;)TR;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2361
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    .line 2337
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p3, :cond_b

    add-int/lit8 v1, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ltz v1, :cond_23

    if-ge v1, v0, :cond_23

    .line 2341
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2342
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    if-eqz p3, :cond_20

    const/4 v2, -0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x1

    :goto_21
    add-int/2addr v1, v2

    goto :goto_c

    :cond_23
    return-object p2
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V
    .registers 3

    const/4 v0, 0x1

    .line 4067
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V

    return-void
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V
    .registers 4

    .line 4072
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4075
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4077
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V

    if-eqz p2, :cond_1a

    .line 4079
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/wm/WindowContainerListener;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_1a
    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 801
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 802
    iget-boolean p0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez p0, :cond_13

    const/4 p0, 0x0

    .line 803
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    :cond_13
    return-void

    .line 806
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a child of container="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIfPossible()V
    .registers 3

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 915
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 916
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public removeImmediately()V
    .registers 5

    .line 829
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 833
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 835
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 839
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_f

    .line 845
    :cond_2e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 850
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_53

    .line 851
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 852
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 854
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 855
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 857
    :cond_53
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_5c

    .line 858
    invoke-virtual {v0}, Lcom/android/server/wm/TrustedOverlayHost;->release()V

    .line 859
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 864
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_63

    .line 865
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 868
    :cond_63
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6b
    if-ltz v0, :cond_7b

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    invoke-interface {v1}, Lcom/android/server/wm/WindowContainerListener;->onRemoved()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6b

    :cond_7b
    return-void
.end method

.method public removeLocalInsetsSourceProvider([I)V
    .registers 5

    if-eqz p1, :cond_51

    .line 478
    array-length v0, p1

    if-eqz v0, :cond_51

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 485
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_46

    .line 486
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v2, p1, v0

    .line 487
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    if-nez v1, :cond_3c

    .line 489
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given insets type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have a local insetsSourceProvider."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 495
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 497
    :cond_46
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    return-void

    .line 479
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insets type not specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3

    .line 4229
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TrustedOverlayHost;->removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 4230
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    invoke-virtual {p1}, Lcom/android/server/wm/TrustedOverlayHost;->release()V

    const/4 p1, 0x0

    .line 4231
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    :cond_12
    return-void
.end method

.method public reparent(Lcom/android/server/wm/WindowContainer;I)V
    .registers 7

    if-eqz p1, :cond_84

    if-eq p1, p0, :cond_6d

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eq v0, p1, :cond_4c

    .line 560
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 561
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x1

    .line 563
    iput-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 564
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 565
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    const/4 p2, 0x0

    .line 566
    iput-boolean p2, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 569
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    if-eq v1, v2, :cond_3e

    const/high16 p2, 0x3f800000    # 1.0f

    .line 573
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    .line 575
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 576
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {p2, v3, v1, v2}, Lcom/android/server/wm/ChangeTransitionController;->handleDisplayChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V

    .line 580
    :cond_38
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 581
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 583
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 587
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 588
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 555
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WC="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already child of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 550
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not reparent to itself "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reparent: can\'t reparent to null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 2598
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_18

    .line 2599
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_18
    :goto_18
    return-void
.end method

.method public resetDragResizingChangeReported()V
    .registers 3

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1140
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1141
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 3437
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_KEYGUARD_ANIMATION_BUG_FIX:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasNonAppWindowAnimationAdapter()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3439
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3440
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    :cond_16
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    .line 4330
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 4332
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object p1, p1, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_1e

    .line 4334
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_1e
    return-void
.end method

.method public scheduleAnimation()V
    .registers 1

    .line 2766
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p0, :cond_7

    .line 2767
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_7
    return-void
.end method

.method public sendAppVisibilityToClients()V
    .registers 3

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1245
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1246
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public setBoostRootTaskLayerForAppTransition(Z)V
    .registers 3

    .line 4278
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    if-eq v0, p1, :cond_6

    .line 4279
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    :cond_6
    return-void
.end method

.method public setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z
    .registers 4

    .line 4119
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 4122
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return v0
.end method

.method public setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-void
.end method

.method public setFocusable(Z)Z
    .registers 3

    .line 1347
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1350
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 3

    const-string v0, "WindowContainer.setInitialSurfaceControlProperties"

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showSurfaceOnCreation()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 654
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 656
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onSurfaceShown(Landroid/view/SurfaceControl$Transaction;)V

    .line 657
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    return-void
.end method

.method public setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 2569
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2572
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SurfaceFreezer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_13

    .line 2576
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    :goto_13
    return-void
.end method

.method setOrientation(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1503
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public setOrientation(ILcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 1516
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1520
    :cond_5
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 1522
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    .line 1524
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1523
    invoke-virtual {p1, v0}, Lcom/android/server/wm/OrientationController;->canSetOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p2

    if-eq p1, p2, :cond_3e

    const/4 p1, 0x1

    .line 1527
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mInSetOrientation:Z

    .line 1528
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 1529
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mInSetOrientation:Z

    :cond_3e
    return-void

    .line 1535
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v1

    if-eq v0, v1, :cond_64

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1546
    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1548
    :cond_64
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    :cond_67
    return-void
.end method

.method public final setParent(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 593
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_a

    .line 596
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_17

    .line 597
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 598
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 600
    :cond_17
    :goto_17
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez p1, :cond_34

    .line 601
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 602
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_2f

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq v1, p1, :cond_2f

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 606
    :cond_2f
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    :cond_34
    return-void
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5

    .line 2585
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2588
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceFreezer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_13

    .line 2592
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    :goto_13
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2

    .line 3751
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 9

    .line 3901
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_23

    iget v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x39309b66

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string/jumbo v1, "setSyncGroup #%d on %s"

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    if-eqz p1, :cond_51

    .line 3903
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eqz v0, :cond_51

    if-ne v0, p1, :cond_2c

    goto :goto_51

    .line 3906
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t sync on 2 engines simultaneously currentSyncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " newSyncId="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3910
    :cond_51
    :goto_51
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method

.method public setWaitingForDrawnIfResizingChanged()V
    .registers 3

    .line 1106
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1108
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public shouldMagnify()Z
    .registers 4

    .line 2523
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 2527
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 2528
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public showSurfaceOnCreation()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showToCurrentUser()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showWallpaper()Z
    .registers 5

    .line 3830
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 3833
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2a

    .line 3836
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_16
    if-ltz v0, :cond_2a

    .line 3837
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3838
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v3

    if-eqz v3, :cond_27

    return v2

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_2a
    :goto_2a
    return v1
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2848
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2842
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 20

    move-object v0, p0

    .line 2830
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_2b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v6, p4

    int-to-long v2, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x16fbb7db

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v4, v10, v1

    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_2b
    move/from16 v6, p4

    .line 2835
    :goto_2d
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    return-void
.end method

.method public startDelayingAnimationStart()V
    .registers 1

    .line 3586
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->startDelayingAnimationStart()V

    return-void
.end method

.method switchUser(I)V
    .registers 4

    .line 1664
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1665
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 2852
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    return-void
.end method

.method public transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .registers 4

    .line 3409
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 3410
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_a

    return-void

    .line 3414
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 3415
    iget p1, p0, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/Point;->offset(II)V

    return-void
.end method

.method public unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V
    .registers 3

    .line 4084
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4085
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    return-void
.end method

.method public updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 420
    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->createShallowCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 421
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 422
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 423
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 424
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 422
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 428
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_33
    if-ltz v0, :cond_43

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_43
    return-void
.end method

.method public updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 4236
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4238
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    :cond_9
    return-void
.end method

.method public updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 3648
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_6e

    .line 3652
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 3653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v0

    .line 3654
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    if-ne v0, v1, :cond_2d

    return-void

    .line 3658
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3660
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    .line 3662
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3663
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v1

    if-nez v1, :cond_6c

    if-eqz v0, :cond_5c

    const/4 v1, 0x0

    .line 3665
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    goto :goto_6c

    .line 3666
    :cond_5c
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    if-eq v0, v1, :cond_6c

    .line 3667
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 3670
    :cond_6c
    :goto_6c
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final updateSurfacePositionNonOrganized()V
    .registers 2

    .line 3628
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3630
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    return-void

    .line 3638
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V
    .registers 8

    .line 3681
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1, v0, p2}, Landroid/util/RotationUtils;->rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 3682
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 3683
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3684
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 3685
    :goto_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    if-eqz v1, :cond_28

    .line 3686
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_2c
    if-eqz v1, :cond_33

    .line 3687
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_37

    :cond_33
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 3685
    :goto_37
    invoke-static {v2, p2, v3, v0}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    if-eqz p3, :cond_3d

    goto :goto_3f

    .line 3688
    :cond_3d
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_3f
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget p2, p0, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public useBLASTSync()Z
    .registers 1

    .line 3946
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public waitForAllWindowsDrawn()V
    .registers 3

    .line 3738
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowContainer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public waitForSyncTransactionCommit(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 4243
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4246
    :cond_7
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 4247
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4249
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_28

    .line 4250
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_28
    return-void
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 1329
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1330
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    const/16 p0, -0x2710

    .line 1331
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    const-string p0, "WindowContainer"

    .line 1332
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1333
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
