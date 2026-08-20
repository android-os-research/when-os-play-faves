.class public Lcom/android/server/wm/DisplayContent$ImeContainer;
.super Lcom/android/server/wm/DisplayArea$Tokens;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeContainer"
.end annotation


# instance fields
.field public mNeedsLayer:Z

.field public mNeedsUpdateAboveInsetsStateAfterUnfreezing:Z


# direct methods
.method public static bridge synthetic -$$Nest$mclearNeedsUpdateAboveInsetsStateAfterUnfreezing(Lcom/android/server/wm/DisplayContent$ImeContainer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->clearNeedsUpdateAboveInsetsStateAfterUnfreezing()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mneedsUpdateAboveInsetsStateAfterUnfreezing(Lcom/android/server/wm/DisplayContent$ImeContainer;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->needsUpdateAboveInsetsStateAfterUnfreezing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smskipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 6088
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ImeContainer"

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 6073
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public static skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 6140
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmImeLayeringTarget(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 6154
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_5

    return-void

    .line 6157
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    const/4 p1, 0x0

    .line 6158
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .registers 6

    .line 6164
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_5

    return-void

    .line 6167
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    const/4 p1, 0x0

    .line 6168
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public final clearNeedsUpdateAboveInsetsStateAfterUnfreezing()V
    .registers 2

    const/4 v0, 0x0

    .line 6083
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsUpdateAboveInsetsStateAfterUnfreezing:Z

    return-void
.end method

.method public forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 6149
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 6129
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6130
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 6133
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public getOrientation(I)I
    .registers 2

    .line 6097
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x2

    return p0

    :cond_8
    return p1
.end method

.method public final needsUpdateAboveInsetsStateAfterUnfreezing()Z
    .registers 1

    .line 6079
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsUpdateAboveInsetsStateAfterUnfreezing:Z

    return p0
.end method

.method public setNeedsLayer()V
    .registers 2

    const/4 v0, 0x1

    .line 6092
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .registers 8

    .line 6173
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 6174
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    if-eqz p1, :cond_50

    .line 6180
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 6181
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_35

    if-eqz p1, :cond_35

    .line 6182
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz p2, :cond_2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x4610a327

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6184
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_50

    .line 6186
    :cond_35
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz p0, :cond_50

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x4d5d0a2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v0

    invoke-static {p2, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 5
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

    .line 6109
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 6113
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmImeLayeringTarget(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 6119
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsUpdateAboveInsetsStateAfterUnfreezing:Z

    .line 6122
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    return-void
.end method
