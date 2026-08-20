.class public Lcom/android/server/wm/Transition;
.super Landroid/os/Binder;
.source "Transition.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$Targets;,
        Lcom/android/server/wm/Transition$ReadyTracker;,
        Lcom/android/server/wm/Transition$ChangeInfo;,
        Lcom/android/server/wm/Transition$TransitionState;
    }
.end annotation


# static fields
.field public static final DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field public static final STATE_ABORT:I = 0x3

.field public static final STATE_COLLECTING:I = 0x0

.field public static final STATE_PENDING:I = -0x1

.field public static final STATE_PLAYING:I = 0x2

.field public static final STATE_STARTED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Transition"

.field public static final TRACE_NAME_PLAY_TRANSITION:Ljava/lang/String; = "PlayTransition"


# instance fields
.field public mCanPipOnFinish:Z

.field public final mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field public mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field public final mController:Lcom/android/server/wm/TransitionController;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFlags:I

.field public mNavBarAttachedToApp:Z

.field public mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field public final mParticipants:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field public mRecentsDisplayId:I

.field public mRemoteTransition:Landroid/window/RemoteTransition;

.field public mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mState:I

.field public final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mSyncId:I

.field public final mTargetDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field public mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public mTransientLaunches:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mType:I

.field public final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Je4yVWjrJ8YV8dZvxg6RtHPZIxI(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$findAnimLayoutParamsActivityRecord$3(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bLbrVBY9eltpGXZltAsjCeu5GC0(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Transition;->lambda$findAnimLayoutParamsActivityRecord$1(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kOVnkD8teKgI5sXQyrvxdtDUHbI(Landroid/os/IRemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$sendRemoteCallback$0(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPAWeA3Usuucv5oLrUQNSKS_WVw(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->lambda$findAnimLayoutParamsActivityRecord$2(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smoccludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Transition;->occludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .registers 8

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 159
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 160
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 167
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 170
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 182
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 188
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 192
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 193
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 195
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 196
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition$ReadyTracker-IA;)V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    .line 201
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 208
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 209
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 210
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 211
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    return-void
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 1203
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xb00f028

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "Start calculating TransitionInfo based on participants: %s"

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    :cond_18
    new-instance v0, Lcom/android/server/wm/Transition$Targets;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/wm/Transition$Targets;-><init>(Lcom/android/server/wm/Transition$Targets-IA;)V

    .line 1208
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_23
    if-ltz v3, :cond_78

    .line 1209
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1210
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_48

    .line 1211
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_75

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x591676b9

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "  Rejecting as detached: %s"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75

    .line 1216
    :cond_48
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_4f

    goto :goto_75

    .line 1218
    :cond_4f
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1221
    invoke-virtual {v5, v4}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 1222
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_75

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x2813544e

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "  Rejecting as no-op: %s"

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_75

    .line 1226
    :cond_72
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/WindowContainer;)V

    :cond_75
    :goto_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 1228
    :cond_78
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_90

    iget-object p0, v0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x6df17644

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    const-string p0, "  Initial targets: %s"

    invoke-static {v3, v4, v2, p0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    :cond_90
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 1233
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 1235
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$Targets;->getListSortedByZ()Ljava/util/ArrayList;

    move-result-object p0

    .line 1236
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_b0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x18260c6e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "  Final targets: %s"

    invoke-static {v0, v3, v2, p1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b0
    return-object p0
.end method

.method public static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/window/TransitionInfo;
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Landroid/window/TransitionInfo;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    .line 1339
    new-instance v2, Landroid/window/TransitionInfo;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3}, Landroid/window/TransitionInfo;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    .line 1342
    :goto_d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_23

    .line 1343
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1344
    invoke-static {v5}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_24

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_23
    const/4 v5, 0x0

    :goto_24
    if-nez v5, :cond_2f

    .line 1350
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    invoke-virtual {v2, v0, v3, v3}, Landroid/window/TransitionInfo;->setRootLeash(Landroid/view/SurfaceControl;II)V

    return-object v2

    .line 1355
    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    :goto_33
    const/4 v5, 0x1

    if-eqz v4, :cond_57

    .line 1359
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_3b
    if-ltz v7, :cond_57

    .line 1360
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1361
    invoke-static {v8}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-nez v9, :cond_54

    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 1362
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    goto :goto_33

    :cond_54
    add-int/lit8 v7, v7, -0x1

    goto :goto_3b

    .line 1370
    :cond_57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 1371
    :goto_5d
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eq v8, v4, :cond_68

    .line 1372
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    goto :goto_5d

    .line 1374
    :cond_68
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transition Root: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1374
    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    .line 1375
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    .line 1376
    iget-object v9, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    .line 1377
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v7

    invoke-virtual {v9, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1378
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1379
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1380
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v8, v7, v4}, Landroid/window/TransitionInfo;->setRootLeash(Landroid/view/SurfaceControl;II)V

    .line 1384
    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->getLayoutParamsForAnimationsStyle(ILjava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1388
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :goto_b8
    const/4 v9, 0x3

    if-ge v8, v7, :cond_207

    .line 1390
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    move-object/from16 v11, p3

    .line 1391
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1392
    new-instance v13, Landroid/window/TransitionInfo$Change;

    .line 1393
    iget-object v14, v10, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v14, :cond_d4

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v14

    goto :goto_d5

    :cond_d4
    const/4 v14, 0x0

    .line 1394
    :goto_d5
    invoke-static {v10}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 1396
    iget-object v14, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v14, :cond_10f

    .line 1398
    iget-object v14, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v14, :cond_104

    .line 1399
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateTransitionInfo, target="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", info.mParent="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Transition"

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_104
    iget-object v14, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v14, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 1405
    :cond_10f
    invoke-virtual {v12, v10}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 1406
    iget-object v14, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 1407
    invoke-virtual {v12, v10}, Lcom/android/server/wm/Transition$ChangeInfo;->getChangeFlags(Lcom/android/server/wm/WindowContainer;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 1408
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_172

    .line 1410
    new-instance v9, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v9}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 1411
    invoke-virtual {v14, v9}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 1412
    invoke-virtual {v13, v9}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1413
    invoke-static {v14}, Lcom/android/server/wm/Transition;->getTaskRotationAnimation(Lcom/android/server/wm/Task;)I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1414
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_148

    .line 1416
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v9

    if-eqz v9, :cond_148

    move v9, v5

    goto :goto_149

    :cond_148
    move v9, v3

    .line 1415
    :goto_149
    invoke-virtual {v13, v9}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    .line 1417
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_17a

    .line 1418
    iget-object v15, v14, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v15, :cond_17a

    .line 1422
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v15

    if-nez v15, :cond_17a

    .line 1425
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v14

    .line 1426
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    .line 1427
    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v9

    if-eq v14, v9, :cond_17a

    .line 1429
    invoke-virtual {v13, v9}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    goto :goto_17a

    .line 1432
    :cond_172
    iget v14, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/2addr v14, v5

    if-eqz v14, :cond_17a

    .line 1433
    invoke-virtual {v13, v9}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1436
    :cond_17a
    :goto_17a
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 1437
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 1438
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 1439
    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    iget v6, v14, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    invoke-virtual {v13, v3, v6}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 1441
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 1442
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_1d0

    .line 1444
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1446
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v6

    const/16 v14, 0xff

    .line 1445
    invoke-static {v6, v14}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    .line 1447
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 1451
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1452
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v6

    if-eqz v6, :cond_1d3

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1453
    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v5

    if-nez v5, :cond_1d3

    .line 1455
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    goto :goto_1d3

    .line 1458
    :cond_1d0
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1460
    :cond_1d3
    :goto_1d3
    iget v5, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v13, v5, v3}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 1462
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v3, :cond_1e8

    .line 1463
    iget v3, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setChangeTransitMode(I)V

    .line 1464
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1467
    :cond_1e8
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BASIC_ANIM_WITH_DIM:Z

    if-eqz v3, :cond_1fd

    iget-object v3, v10, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 1469
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    .line 1468
    invoke-virtual {v3, v0, v5, v4}, Lcom/android/server/wm/DimAnimator;->canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    const/4 v3, 0x1

    .line 1470
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setHasDimAnimationLeash(Z)V

    goto :goto_1fe

    :cond_1fd
    const/4 v3, 0x1

    .line 1473
    :goto_1fe
    invoke-virtual {v2, v13}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    add-int/lit8 v8, v8, 0x1

    move v5, v3

    const/4 v3, 0x0

    goto/16 :goto_b8

    :cond_207
    if-eqz v4, :cond_218

    .line 1480
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v9, :cond_218

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_218

    .line 1486
    invoke-static {v4}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 1487
    invoke-virtual {v2, v0}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    :cond_218
    return-object v2
.end method

.method public static canPromote(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1089
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1090
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_107

    if-eqz v1, :cond_107

    .line 1091
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_107

    .line 1096
    :cond_1c
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 1097
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_31

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p1, -0x796524ed

    const-string p2, "      SKIP: is wallpaper"

    invoke-static {p0, p1, v4, p2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    return v4

    .line 1114
    :cond_32
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_5e

    instance-of v1, v0, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_5e

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    .line 1115
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_5e

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-static {p0}, Lcom/android/server/wm/Transition;->occludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1117
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_5d

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p1, 0x523c3907

    const-string p2, "      SKIP: is dtda on top of keyguard"

    invoke-static {p0, p1, v4, p2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5d
    return v4

    .line 1123
    :cond_5e
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_6d
    if-ltz v5, :cond_106

    .line 1125
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-ne p0, v6, :cond_77

    goto/16 :goto_102

    .line 1127
    :cond_77
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_8d

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x29ef387a

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const-string v7, "      check sibling %s"

    invoke-static {v8, v9, v4, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    :cond_8d
    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v7, :cond_d7

    .line 1130
    invoke-virtual {p1, v6}, Lcom/android/server/wm/Transition$Targets;->wasParticipated(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-nez v8, :cond_9c

    goto :goto_d7

    .line 1142
    :cond_9c
    invoke-virtual {v7, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    .line 1143
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_ba

    invoke-static {v6}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x2e700ee9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const-string v7, "        sibling is a participant with mode %s"

    invoke-static {v8, v9, v4, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_ba
    if-eq v1, v6, :cond_102

    .line 1147
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_d6

    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, 0x5793e434

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const-string p0, "          SKIP: common mode mismatch. was %s"

    invoke-static {p1, p2, v4, p0, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d6
    return v4

    .line 1131
    :cond_d7
    :goto_d7
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 1133
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_eb

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p1, 0x2f4ce560

    const-string p2, "        SKIP: sibling is visible but not part of transition"

    invoke-static {p0, p1, v4, p2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_eb
    return v4

    .line 1137
    :cond_ec
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_102

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x670d3691

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v4

    const-string v6, "        unrelated invisible sibling %s"

    invoke-static {v7, v8, v4, v6, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_102
    :goto_102
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_6d

    :cond_106
    return v3

    .line 1092
    :cond_107
    :goto_107
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_12f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "parent can\'t be target "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, 0x2c5b2735

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const-string p0, "      SKIP: %s"

    invoke-static {p1, p2, v4, p0, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12f
    return v4
.end method

.method public static findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1525
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p0, v0}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_c

    return-object p1

    .line 1531
    :cond_c
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    return-object p1

    .line 1536
    :cond_18
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .registers 1

    .line 1574
    check-cast p0, Lcom/android/server/wm/Transition;

    return-object p0
.end method

.method public static getLayoutParamsForAnimationsStyle(ILjava/util/ArrayList;)Landroid/view/WindowManager$LayoutParams;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/view/WindowManager$LayoutParams;"
        }
    .end annotation

    .line 1497
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1498
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1499
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1500
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1501
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_9

    return-object v3

    .line 1509
    :cond_35
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    return-object v3

    .line 1515
    :cond_3c
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_48

    :cond_47
    move-object p0, v3

    :goto_48
    if-eqz p0, :cond_4c

    .line 1518
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_4c
    return-object v3
.end method

.method public static getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .registers 2

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1297
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 1299
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1304
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    .line 1308
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .registers 2

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 1317
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static getTaskRotationAnimation(Lcom/android/server/wm/Task;)I
    .registers 6

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    .line 1555
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_10

    return v1

    .line 1557
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v3

    if-ltz v3, :cond_17

    return v3

    .line 1559
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    return v3

    .line 1561
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-ne v2, p0, :cond_3b

    .line 1562
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_3b

    .line 1566
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    return p0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public static isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 1326
    instance-of p0, p0, Lcom/android/server/wm/DisplayContent;

    return p0
.end method

.method public static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$findAnimLayoutParamsActivityRecord$1(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1526
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1527
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$findAnimLayoutParamsActivityRecord$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$findAnimLayoutParamsActivityRecord$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$sendRemoteCallback$0(Landroid/os/IRemoteCallback;)V
    .registers 2

    const/4 v0, 0x0

    .line 371
    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1541
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 1542
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1543
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_23

    .line 1544
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_4

    .line 1545
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static occludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1066
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    return p0

    .line 1068
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 1073
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public static populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1246
    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_18
    if-ltz v2, :cond_28

    .line 1247
    iget-object v4, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1249
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2d
    if-ltz v2, :cond_c9

    .line 1250
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1252
    invoke-static {v4}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    .line 1253
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1256
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    :goto_40
    const/4 v7, 0x0

    if-eqz v6, :cond_8c

    .line 1257
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v8, :cond_8c

    .line 1258
    invoke-virtual {v8, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-nez v9, :cond_52

    goto :goto_8c

    .line 1259
    :cond_52
    iget-object v9, v6, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v9, :cond_57

    goto :goto_87

    .line 1263
    :cond_57
    iget-object v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v8, :cond_66

    if-nez v5, :cond_66

    .line 1264
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_8c

    .line 1268
    :cond_66
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    if-eqz v5, :cond_77

    .line 1270
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_7a

    .line 1272
    :cond_77
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7a
    move v5, v3

    goto :goto_8d

    .line 1276
    :cond_7c
    invoke-static {v6}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_87

    if-nez v5, :cond_87

    .line 1277
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_87
    :goto_87
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    goto :goto_40

    :cond_8c
    :goto_8c
    move v5, v7

    :goto_8d
    if-eqz v5, :cond_c5

    .line 1280
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_96

    goto :goto_c5

    .line 1282
    :cond_96
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    iput-object v5, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 1283
    :goto_a4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v7, v4, :cond_c5

    .line 1284
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1285
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    iput-object v6, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 1286
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_a4

    :cond_c5
    :goto_c5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2d

    :cond_c9
    return-void
.end method

.method public static reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result p0

    return p0
.end method

.method public static tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition$Targets;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_a
    if-ltz v0, :cond_a5

    .line 1165
    iget-object v4, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1166
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1e5fe76a

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v5, v9, v6

    const-string v5, "    checking %s"

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-ne v5, v3, :cond_40

    .line 1169
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_a1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x6af3632

    const-string v7, "      SKIP: its sibling was rejected"

    invoke-static {v4, v5, v6, v7, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a1

    .line 1173
    :cond_40
    invoke-static {v4, p0, p1}, Lcom/android/server/wm/Transition;->canPromote(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z

    move-result v7

    if-nez v7, :cond_48

    move-object v3, v5

    goto :goto_a1

    .line 1177
    :cond_48
    invoke-static {v4}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 1178
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_7e

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x1f7aee4c

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v6

    const-string v4, "        keep as target %s"

    invoke-static {v7, v8, v6, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7e

    .line 1181
    :cond_65
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_7b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0xaddf948

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v7, v10, v6

    const-string v7, "        remove from targets %s"

    invoke-static {v8, v9, v6, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    :cond_7b
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/Transition$Targets;->remove(ILcom/android/server/wm/WindowContainer;)V

    .line 1185
    :cond_7e
    :goto_7e
    iget-object v4, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_a1

    .line 1186
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_9c

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x568ff406

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v6

    const-string v4, "      CAN PROMOTE: promoting to parent %s"

    invoke-static {v7, v8, v6, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9c
    add-int/lit8 v0, v0, 0x1

    .line 1190
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/WindowContainer;)V

    :cond_a1
    :goto_a1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    :cond_a5
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 9

    .line 653
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    if-nez v0, :cond_32

    .line 657
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x337704d6    # -7.1817552E7f

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const-string v2, "Aborting Transition: %d"

    invoke-static {v0, v4, v5, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :cond_23
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->abort(I)V

    .line 661
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionCancelled()V

    return-void

    .line 655
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Too late to abort."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addFlag(I)V
    .registers 3

    .line 215
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return-void
.end method

.method public allReady()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 433
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTracker;->allReady()Z

    move-result p0

    return p0
.end method

.method public final applyReady()V
    .registers 13

    .line 406
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    .line 407
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->allReady()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x7

    if-eqz v0, :cond_3e

    .line 410
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_5d

    iget v5, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v5, v5

    const/16 v7, 0x8

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4fcd0a8d

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v1

    aput-object v7, v10, v3

    const-string v1, "Set transition ready=%b %d, caller=%s"

    invoke-static {v8, v9, v4, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5d

    .line 414
    :cond_3e
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_5d

    iget v5, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v5, v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x3425bbc3    # -2.8608634E7f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Set transition ready=%b %d"

    invoke-static {v7, v8, v4, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)V

    return-void
.end method

.method public final buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 15

    .line 443
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 445
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 446
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_12
    const/4 v3, 0x0

    if-ltz v2, :cond_a8

    .line 447
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 448
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_a4

    .line 449
    invoke-static {v4}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v5

    .line 450
    invoke-static {v4}, Lcom/android/server/wm/Transition;->getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v6

    .line 452
    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 453
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 454
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 455
    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 459
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_48

    goto :goto_78

    .line 462
    :cond_48
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v6, :cond_53

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_53

    goto :goto_78

    .line 466
    :cond_53
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 469
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 470
    iget v6, v0, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_78

    .line 472
    :cond_6b
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 473
    iget v6, v0, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 475
    :goto_78
    invoke-virtual {p1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    .line 476
    invoke-virtual {p1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 477
    invoke-virtual {p1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, p1

    move-object v7, v5

    .line 478
    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 483
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v3

    if-eqz v3, :cond_9d

    const/4 v3, -0x1

    .line 484
    invoke-virtual {p1, v5, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 486
    :cond_9d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_a4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_12

    .line 491
    :cond_a8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_ae
    if-ltz p0, :cond_c3

    .line 492
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b7

    goto :goto_c0

    .line 493
    :cond_b7
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    :goto_c0
    add-int/lit8 p0, p0, -0x1

    goto :goto_ae

    .line 495
    :cond_c3
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_cc

    .line 496
    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_cc
    return-void
.end method

.method public cleanUpOnFailure()V
    .registers 3

    .line 826
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    return-void

    .line 828
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_d

    .line 829
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 831
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_14

    .line 832
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 834
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->finishTransition(Landroid/os/IBinder;)V

    return-void
.end method

.method public collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 12

    .line 292
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_d6

    .line 295
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_9

    return-void

    .line 298
    :cond_9
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_35

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x7c6b2e63

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v3

    aput-object v5, v9, v4

    aput-object v6, v9, v2

    const-string v0, "Collecting in transition %d: %s, caller=%s"

    invoke-static {v7, v8, v4, v0, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    :goto_39
    if-eqz v0, :cond_7c

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v5, v0}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v1, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {v0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->addGroup(Lcom/android/server/wm/WindowContainer;)V

    .line 313
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_77

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v5, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x55fc89b0

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v3

    aput-object v1, v9, v4

    const-string v1, " Creating Ready-group for Transition %d with root=%s"

    invoke-static {v7, v8, v4, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_77
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_39

    .line 317
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    .line 318
    :cond_85
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v0, :cond_a0

    .line 321
    new-instance v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_a0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_c0
    iget-boolean v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-eqz v0, :cond_d5

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 333
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_d5
    return-void

    .line 293
    :cond_d6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Transition hasn\'t started collecting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 10

    .line 348
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 349
    :cond_5
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x152255b1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    aput-object v3, v6, v2

    const-string v0, "Existence Changed in transition %d: %s"

    invoke-static {v4, v5, v2, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    return-void
.end method

.method public finishTransition()V
    .registers 12

    const-wide/16 v0, 0x20

    .line 514
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 516
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "PlayTransition"

    .line 515
    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_11
    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 519
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1cc

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    .line 525
    :goto_1e
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_123

    .line 526
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_ea

    .line 528
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_dc

    .line 535
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_dc

    .line 537
    iget-boolean v8, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    if-eqz v8, :cond_a8

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_a8

    .line 538
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v8, :cond_89

    .line 539
    invoke-virtual {v8}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v8

    if-eqz v8, :cond_89

    .line 540
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v8, :cond_7e

    move v8, v1

    .line 541
    :goto_62
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_7e

    .line 542
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 545
    iput-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    goto :goto_7e

    :cond_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    .line 550
    :cond_7e
    :goto_7e
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v8, v5, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move v8, v1

    goto :goto_a9

    .line 554
    :cond_89
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDeferHidingClient()Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 556
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v6, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 557
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    const-string v9, "finishTransition"

    invoke-virtual {v8, v1, v0, v9}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 559
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v1, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    :cond_a8
    move v8, v6

    :goto_a9
    if-eqz v8, :cond_dc

    .line 563
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_c1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x1fb6ed11

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v1

    const-string v4, "  Commit activity becoming invisible: %s"

    invoke-static {v8, v9, v1, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 565
    :cond_c1
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_d8

    .line 566
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_d8

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v8, :cond_d8

    .line 570
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v4, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 573
    :cond_d8
    invoke-virtual {v5, v1, v1, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    move v4, v6

    .line 578
    :cond_dc
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eq v8, v7, :cond_ea

    .line 580
    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 583
    :cond_ea
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v5

    if-eqz v5, :cond_11f

    .line 585
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11f

    .line 586
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_11f

    .line 587
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_11c

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x2937b08e

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v1

    const-string v7, "  Commit wallpaper becoming invisible: %s"

    invoke-static {v8, v9, v1, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 589
    :cond_11c
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_11f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    :cond_123
    move v3, v1

    .line 596
    :goto_124
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_142

    .line 597
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_13f

    .line 599
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V

    :cond_13f
    add-int/lit8 v3, v3, 0x1

    goto :goto_124

    :cond_142
    if-eqz v4, :cond_14d

    .line 605
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 606
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    .line 609
    :cond_14d
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 613
    iget v3, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16b

    .line 615
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 616
    invoke-virtual {v5, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 617
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_16b
    move v3, v1

    .line 620
    :goto_16c
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1cb

    .line 621
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 622
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v7

    if-eqz v7, :cond_18d

    .line 623
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18d

    .line 624
    invoke-virtual {v7}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V

    .line 626
    :cond_18d
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v7, :cond_1c2

    .line 627
    invoke-virtual {v5, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    move v8, v1

    .line 632
    :goto_196
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_1b4

    .line 633
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-ne v9, v5, :cond_1b1

    .line 634
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v8

    goto :goto_1b5

    :cond_1b1
    add-int/lit8 v8, v8, 0x1

    goto :goto_196

    :cond_1b4
    move-object v8, v0

    .line 638
    :goto_1b5
    iget v9, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-eq v9, v4, :cond_1c2

    if-ne v7, v8, :cond_1c2

    .line 642
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 646
    :cond_1c2
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 647
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->handleCompleteDeferredRemoval()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16c

    :cond_1cb
    return-void

    .line 520
    :cond_1cc
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t finish a non-playing transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFlags()I
    .registers 1

    .line 259
    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return p0
.end method

.method public getLegacyIsReady()Z
    .registers 3

    .line 1570
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_c

    :cond_7
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ltz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 1

    .line 669
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public getSyncId()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 254
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return p0
.end method

.method public getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x0

    .line 234
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 235
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_29
    return-object v1
.end method

.method public final handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V
    .registers 14

    .line 839
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7

    return-void

    .line 842
    :cond_7
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 846
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const-string/jumbo v1, "recents_animation_input_consumer"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_8a

    move-object v6, v2

    move-object v7, v6

    move v5, v3

    .line 853
    :goto_1f
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_74

    .line 854
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 855
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-nez v9, :cond_3a

    goto :goto_71

    .line 857
    :cond_3a
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 856
    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v9

    if-nez v9, :cond_51

    goto :goto_71

    .line 859
    :cond_51
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v8, v1, :cond_5f

    const/4 v10, 0x3

    if-ne v8, v10, :cond_5d

    goto :goto_5f

    :cond_5d
    move v8, v3

    goto :goto_60

    :cond_5f
    :goto_5f
    move v8, v4

    :goto_60
    if-eqz v8, :cond_69

    if-nez v6, :cond_69

    .line 863
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_71

    :cond_69
    if-nez v8, :cond_71

    if-nez v7, :cond_71

    .line 865
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    :cond_71
    :goto_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_74
    if-eqz v6, :cond_8a

    if-eqz v7, :cond_8a

    .line 869
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 870
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 869
    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 871
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 876
    :cond_8a
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 880
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 881
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_b1

    const/16 v5, 0x12

    .line 883
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    goto :goto_b1

    .line 891
    :cond_aa
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 897
    :cond_b1
    :goto_b1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 899
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-eqz v0, :cond_c3

    goto/16 :goto_166

    :cond_c3
    move v0, v3

    .line 905
    :goto_c4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_110

    .line 906
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 907
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_10d

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v7, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-ne v6, v7, :cond_10d

    .line 908
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v6

    if-ne v6, v4, :cond_10d

    .line 909
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    if-eq v6, v1, :cond_100

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_100

    goto :goto_10d

    .line 912
    :cond_100
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_110

    :cond_10d
    :goto_10d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    :cond_110
    :goto_110
    if-eqz v2, :cond_166

    .line 915
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_119

    goto :goto_166

    .line 919
    :cond_119
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-eqz p2, :cond_166

    .line 920
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v0, :cond_128

    goto :goto_166

    .line 923
    :cond_128
    iput-boolean v4, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    .line 924
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 925
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 926
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    .line 927
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 928
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 930
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p1

    .line 931
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 932
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p2, p1, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15b

    :cond_155
    const p1, 0x7fffffff

    .line 935
    invoke-virtual {v0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 937
    :goto_15b
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p1, :cond_166

    .line 938
    iget p0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-interface {p1, p0, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    :cond_166
    :goto_166
    return-void
.end method

.method public final handleNonAppWindowsInTransition(Lcom/android/server/wm/DisplayContent;II)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-eq p2, v1, :cond_8

    and-int/lit16 p2, p3, 0x100

    if-eqz p2, :cond_67

    .line 990
    :cond_8
    sget-boolean p2, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez p2, :cond_67

    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_40

    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_40

    .line 996
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_27

    move v4, v0

    goto :goto_28

    :cond_27
    move v4, v2

    .line 997
    :goto_28
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1000
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1001
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    .line 1000
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1002
    iget-object v4, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    :cond_40
    if-eqz v1, :cond_44

    move v1, v0

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_4b

    move v3, v0

    goto :goto_4c

    :cond_4b
    move v3, v2

    :goto_4c
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_51

    move v2, v0

    .line 1005
    :cond_51
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    if-nez p2, :cond_67

    .line 1013
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 1013
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    :cond_67
    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_76

    .line 1018
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardOcclusionChange(Z)I

    :cond_76
    return-void
.end method

.method public isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public legacyRestoreNavigationBarFromApp()V
    .registers 10

    .line 944
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mNavBarAttachedToApp:Z

    .line 947
    iget v1, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    const-string v1, "Transition"

    const-string v2, "Reparented navigation bar without a valid display"

    .line 948
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 952
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 953
    iget v3, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-interface {v1, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 956
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 957
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 958
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_39

    return-void

    .line 960
    :cond_39
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 962
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v3, :cond_41

    return-void

    .line 964
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 965
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 966
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move v6, v0

    .line 971
    :goto_55
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7a

    .line 972
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_77

    .line 973
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v8

    if-nez v8, :cond_72

    goto :goto_77

    .line 974
    :cond_72
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    goto :goto_7a

    :cond_77
    :goto_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    :cond_7a
    :goto_7a
    if-eqz v0, :cond_85

    .line 979
    new-instance p0, Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-direct {p0, v1}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 981
    invoke-virtual {p0, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    goto :goto_90

    .line 984
    :cond_85
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_90
    return-void
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 11

    .line 674
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-eq p1, v0, :cond_25

    .line 675
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected Sync ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Expected "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Transition"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 678
    :cond_25
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 679
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_3c
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 686
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v2, :cond_5d

    .line 687
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->abort(Lcom/android/server/wm/Transition;)V

    .line 688
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 689
    iput v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 690
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-void

    .line 694
    :cond_5d
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_65
    if-ltz v1, :cond_87

    .line 695
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 696
    invoke-static {v5}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_84

    .line 697
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_65

    :cond_87
    const/4 v1, 0x2

    .line 701
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->moveToPlaying(Lcom/android/server/wm/Transition;)V

    .line 704
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 705
    iget v1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 709
    :cond_9b
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v1, v5}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 710
    iget v5, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v6, p0, Lcom/android/server/wm/Transition;->mFlags:I

    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v5, v6, v1, v7}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/window/TransitionInfo;

    move-result-object v1

    .line 711
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v5, :cond_b6

    .line 712
    invoke-virtual {v1, v5}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 716
    :cond_b6
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Transition;->handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V

    .line 718
    iget v5, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v6, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/wm/Transition;->handleNonAppWindowsInTransition(Lcom/android/server/wm/DisplayContent;II)V

    .line 720
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->reportStartReasonsToLogger()V

    .line 723
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 732
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_cf
    if-ltz v5, :cond_10e

    .line 733
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_10b

    .line 734
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v7, :cond_e4

    goto :goto_10b

    .line 735
    :cond_e4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 749
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    :goto_ef
    if-eqz v6, :cond_10b

    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10b

    .line 751
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    if-eqz v7, :cond_106

    .line 752
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 750
    :cond_106
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    goto :goto_ef

    :cond_10b
    :goto_10b
    add-int/lit8 v5, v5, -0x1

    goto :goto_cf

    .line 760
    :cond_10e
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_115
    if-ltz v5, :cond_138

    .line 761
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 762
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v7

    if-eqz v7, :cond_135

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_12c

    goto :goto_135

    .line 763
    :cond_12c
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_135
    :goto_135
    add-int/lit8 v5, v5, -0x1

    goto :goto_115

    .line 769
    :cond_138
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v5, :cond_178

    .line 770
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_143
    if-ltz v5, :cond_178

    .line 771
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_175

    .line 772
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_175

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_175

    .line 773
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_16a

    goto :goto_175

    .line 774
    :cond_16a
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 775
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 774
    invoke-virtual {v7, v6, v0}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    :cond_175
    :goto_175
    add-int/lit8 v5, v5, -0x1

    goto :goto_143

    .line 781
    :cond_178
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v5

    if-eqz v5, :cond_189

    .line 782
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_189

    .line 783
    invoke-virtual {v5, p2}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 785
    :cond_189
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 786
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 790
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    const-string v6, "StartTransaction"

    iput-object v6, v5, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    const-string v5, "FinishTransaction"

    .line 791
    iput-object v5, p1, Landroid/view/SurfaceControl$Transaction;->mName:Ljava/lang/String;

    .line 795
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 796
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object p1

    if-eqz p1, :cond_1f0

    .line 797
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionStarting(Landroid/window/TransitionInfo;)V

    .line 799
    :try_start_1b9
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_1cf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x427958e9

    const-string v7, "Calling onTransitionReady: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v5, v6, v0, v7, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 801
    :cond_1cf
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, p0, v1, p2, v0}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const-wide/16 p1, 0x20

    .line 803
    invoke-static {p1, p2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1f3

    const-string v0, "PlayTransition"

    .line 805
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 804
    invoke-static {p1, p2, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1b9 .. :try_end_1eb} :catch_1ec

    goto :goto_1f3

    .line 810
    :catch_1ec
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    goto :goto_1f3

    .line 814
    :cond_1f0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 816
    :cond_1f3
    :goto_1f3
    iput v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 817
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-void
.end method

.method public final reportStartReasonsToLogger()V
    .registers 6

    .line 1026
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1027
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_39

    .line 1028
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1029
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_22

    goto :goto_36

    .line 1032
    :cond_22
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_2e

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    if-nez v4, :cond_2e

    move v4, v2

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x2

    :goto_2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    :goto_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1036
    :cond_39
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public final sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 369
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllReady()V
    .registers 2

    .line 426
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->setAllReady()V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    return-void
.end method

.method public setCanPipOnFinish(Z)V
    .registers 2

    .line 506
    iput-boolean p1, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    return-void
.end method

.method public setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;I)V"
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_c

    .line 363
    iput p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    :cond_c
    return-void
.end method

.method public setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 5

    .line 382
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 383
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 384
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 385
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 386
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 400
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_5

    return-void

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition$ReadyTracker;->setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    return-void
.end method

.method public setRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 2

    .line 665
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_b

    return-void

    .line 249
    :cond_b
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method

.method public setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p2, :cond_32

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, -0x2e76c55e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "Transition %d: Set %s as transient-launch"

    invoke-static {p1, p2, v0, p0, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public start()V
    .registers 8

    .line 277
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_3f

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1f

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition already started: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Transition"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1f
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 283
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3b6c688c

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "Starting Transition %d"

    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    return-void

    .line 278
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t start Transition which isn\'t collecting."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startCollecting(J)V
    .registers 5

    .line 264
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-string v1, "Transition"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return-void

    .line 265
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to re-use a transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TransitionRecord{"

    .line 1043
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 1048
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
