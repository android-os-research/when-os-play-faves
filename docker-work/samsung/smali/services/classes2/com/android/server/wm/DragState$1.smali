.class public Lcom/android/server/wm/DragState$1;
.super Lcom/android/server/wm/DragState$ScaleAnimationListener;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DragState;->createObjectReleaseAnimationLocked()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 3

    .line 1230
    iput-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DragState$ScaleAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$ScaleAnimationListener-IA;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1233
    iget-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DragState;->endAnimator(I)V

    .line 1236
    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    return-void
.end method
