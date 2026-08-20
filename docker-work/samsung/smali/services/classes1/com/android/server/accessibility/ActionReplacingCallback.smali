.class public Lcom/android/server/accessibility/ActionReplacingCallback;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "ActionReplacingCallback.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ActionReplacingCallback"


# instance fields
.field public final mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field public final mInteractionId:I

.field public final mLock:Ljava/lang/Object;

.field public mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mNodeWithReplacementActionsInteractionId:I

.field public mNodesFromOriginalWindow:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPrefetchedNodesFromOriginalWindow:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mReplacementNodeIsReadyOrFailed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public mSetFindNodeFromOriginalWindowCalled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSetFindNodesFromOriginalWindowCalled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSetPrefetchFromOriginalWindowCalled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 74
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 44
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 55
    iput-boolean v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 61
    iput-boolean v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    .line 68
    iput-boolean v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    move-object/from16 v2, p1

    .line 75
    iput-object v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-object/from16 v2, p2

    .line 76
    iput-object v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 77
    iput v1, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v14, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 78
    iput v5, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    .line 81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 83
    :try_start_28
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p2

    move-wide v2, v3

    move-object v4, v6

    move-object/from16 v6, p0

    move/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3c} :catch_3f
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v0

    goto :goto_45

    .line 91
    :catch_3f
    :try_start_3f
    iput-boolean v14, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_3d

    .line 93
    :goto_41
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_45
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    throw v0
.end method


# virtual methods
.method public final replaceActionsLocked(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 241
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    if-nez p1, :cond_19

    const/4 p0, 0x0

    goto :goto_1e

    .line 246
    :cond_19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1e
    return-object p0
.end method

.method public final replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 251
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAllActions()V

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 259
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_7c

    .line 261
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 263
    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 267
    :cond_3c
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 268
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 270
    :cond_46
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 275
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :cond_7c
    return-void
.end method

.method public final replaceInfoActionsAndCallService()V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_1a

    .line 176
    iget-object v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_1a

    .line 177
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 178
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 180
    :cond_1a
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 181
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_27

    if-eqz v1, :cond_26

    .line 184
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v2, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-void

    :catchall_27
    move-exception p0

    .line 181
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final replaceInfoActionsAndCallServiceIfReady()V
    .registers 1

    .line 149
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallService()V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfosActionsAndCallService()V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replacePrefetchInfosActionsAndCallService()V

    return-void
.end method

.method public final replaceInfosActionsAndCallService()V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_1a

    .line 200
    iget-object v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 201
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    .line 203
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    if-eqz v1, :cond_25

    .line 206
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v3, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 203
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final replacePrefetchInfosActionsAndCallService()V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_1a

    .line 222
    iget-object v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 223
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    .line 225
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    if-eqz v1, :cond_25

    .line 228
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v3, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 225
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_d

    .line 101
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 102
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    goto :goto_15

    .line 103
    :cond_d
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    if-ne p2, v1, :cond_1a

    .line 104
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 105
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 110
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    .line 111
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :cond_1a
    :try_start_1a
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    .line 107
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw p0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_d

    .line 119
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    .line 120
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    goto :goto_16

    .line 121
    :cond_d
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    if-ne p2, v1, :cond_1b

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ActionReplacingCallback;->setNodeWithReplacementActionsFromList(Ljava/util/List;)V

    .line 123
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 128
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_24

    .line 129
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :cond_1b
    :try_start_1b
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final setNodeWithReplacementActionsFromList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 157
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 158
    iput-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V

    return-void
.end method

.method public setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    if-ne p2, v1, :cond_11

    .line 138
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    .line 144
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    .line 145
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :cond_11
    :try_start_11
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    .line 144
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw p0
.end method
