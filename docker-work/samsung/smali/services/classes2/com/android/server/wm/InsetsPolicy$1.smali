.class public Lcom/android/server/wm/InsetsPolicy$1;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged()V
    .registers 9

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmStateController(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 108
    :cond_d
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v2, v1, :cond_47

    aget-object v4, v0, v2

    .line 109
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    .line 110
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmShowingTransientTypes(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_26

    goto :goto_44

    .line 114
    :cond_26
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 120
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v3}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 121
    invoke-static {v5}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    .line 120
    :goto_40
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x1

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_47
    if-eqz v3, :cond_52

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {p0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_52
    return-void
.end method
