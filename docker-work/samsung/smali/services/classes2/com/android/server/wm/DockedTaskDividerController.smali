.class public Lcom/android/server/wm/DockedTaskDividerController;
.super Ljava/lang/Object;
.source "DockedTaskDividerController.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mResizing:Z

.field public final mTouchRegion:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 32
    iput-object p1, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public getTouchRegion(Landroid/graphics/Rect;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isResizing()Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mResizing:Z

    return p0
.end method

.method public final resetDragResizingChangeReported()V
    .registers 3

    .line 60
    iget-object p0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DockedTaskDividerController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DockedTaskDividerController$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public setResizing(Z)V
    .registers 3

    .line 40
    iget-boolean v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mResizing:Z

    if-eq v0, p1, :cond_9

    .line 41
    iput-boolean p1, p0, Lcom/android/server/wm/DockedTaskDividerController;->mResizing:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/server/wm/DockedTaskDividerController;->resetDragResizingChangeReported()V

    :cond_9
    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 49
    iget-object p1, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/DockedTaskDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    aput p0, v0, v1

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    :cond_24
    return-void
.end method
