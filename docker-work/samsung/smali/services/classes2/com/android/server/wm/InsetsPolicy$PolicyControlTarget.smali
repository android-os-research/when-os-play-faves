.class public final Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PolicyControlTarget"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .registers 2

    .line 1073
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final canStartHideAnimation(Landroid/view/InsetsSourceControl;)Z
    .registers 2

    .line 1119
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result p1

    .line 1120
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public getRequestedVisibility(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public notifyInsetsControlChanged()V
    .registers 11

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmStateController(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 1082
    :cond_d
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1085
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 1086
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_20
    if-ge v5, v3, :cond_57

    aget-object v7, v0, v5

    .line 1087
    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    if-eqz v8, :cond_54

    .line 1088
    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-nez v9, :cond_31

    goto :goto_54

    .line 1091
    :cond_31
    invoke-virtual {p0, v7}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->canStartHideAnimation(Landroid/view/InsetsSourceControl;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1092
    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v6, v8

    .line 1093
    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v8

    new-instance v9, Landroid/view/InsetsSourceControl;

    invoke-direct {v9, v7}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_54

    :cond_4d
    const/4 v7, 0x0

    .line 1096
    invoke-virtual {v2, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1097
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_54
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_57
    if-eqz v6, :cond_75

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyInsetsControlChanged: hide anim, typesReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    const/4 v2, 0x0

    invoke-static {v0, v6, v1, v4, v2}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$mcontrolAnimationUnchecked(Lcom/android/server/wm/InsetsPolicy;ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V

    .line 1104
    :cond_75
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {p0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method
