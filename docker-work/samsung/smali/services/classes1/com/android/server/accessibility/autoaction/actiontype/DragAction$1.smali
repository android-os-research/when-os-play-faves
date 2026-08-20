.class public Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;
.super Ljava/lang/Object;
.source "DragAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->performCornerAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    .line 85
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 87
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    new-array v4, v1, [Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v3, v4}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fputmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;[Landroid/view/MotionEvent$PointerCoords;)V

    .line 88
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v3}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v2

    .line 89
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v3}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v4}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v3}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v4}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    aget-object v2, v4, v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v3, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->updateView(FF)V

    .line 92
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->setViewOnOff(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->val$displayId:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$mdragAndDrop(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V

    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->destroy()V

    .line 97
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmSecondPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->destroy()V

    goto :goto_ce

    .line 99
    :cond_79
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    new-array v3, v1, [Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v0, v3}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fputmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;[Landroid/view/MotionEvent$PointerCoords;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v0, v2

    .line 101
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v3}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstEvent(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v4}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v3}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {v4}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPointerCoords(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    aget-object v2, v4, v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v3, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->updateView(FF)V

    .line 104
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/DragAction;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->-$$Nest$fgetmFirstPoint(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;)Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->setViewOnOff(Z)V

    :goto_ce
    return-void
.end method
