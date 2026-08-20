.class public Lcom/android/server/ibs/sqd/IbsQuickDim$2;
.super Ljava/lang/Object;
.source "IbsQuickDim.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sqd/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_19

    .line 102
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQuickDimMode(Lcom/android/server/ibs/sqd/IbsQuickDim;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 103
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$2;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetmQkDimHandler(Lcom/android/server/ibs/sqd/IbsQuickDim;)Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_19
    return-void
.end method
