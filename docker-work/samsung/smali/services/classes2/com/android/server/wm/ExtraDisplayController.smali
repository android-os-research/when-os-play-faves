.class public abstract Lcom/android/server/wm/ExtraDisplayController;
.super Ljava/lang/Object;
.source "ExtraDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final as:Lcom/android/server/wm/ExtraDisplayFactory;

.field public final mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ExtraDisplayFactory;-><init>(Lcom/android/server/wm/ExtraDisplayController;)V

    iput-object v0, p0, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayController;->getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    return-void
.end method


# virtual methods
.method public final canHaveCoverHomeDisplay(I)Z
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {p0, p1}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->canHaveCoverHomeDisplay(I)Z

    move-result p0

    return p0
.end method

.method public final getExtraDisplayId()I
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {p0}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->getExtraDisplayId()I

    move-result p0

    return p0
.end method

.method public abstract getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
.end method

.method public final getOtherDisplayBelowTargetDisplay(I)I
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {p0, p1}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->getOtherDisplayBelowTargetDisplay(I)I

    move-result p0

    return p0
.end method

.method public positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .registers 7

    .line 66
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_29

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->shouldNotPositionToTopDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "positionChildAt: can\'t gain focus display="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_48

    .line 73
    iget-object v2, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {v2, v0}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->getOtherDisplayBelowTargetDisplay(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_48

    .line 75
    iget-object v2, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 77
    iget-object p1, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, v1, v0, p3}, Lcom/android/server/wm/RootWindowContainer;->superPositionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    const/4 p1, 0x1

    .line 83
    :cond_48
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->superPositionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public final shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .registers 3

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->shouldNotHandleForcedResizableTaskIfNeeded(II)Z

    move-result p0

    return p0
.end method

.method public final shouldNotPositionToTopDisplay(I)Z
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->mPolicy:Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;

    invoke-interface {p0, p1}, Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;->shouldNotPositionToTopDisplay(I)Z

    move-result p0

    return p0
.end method
