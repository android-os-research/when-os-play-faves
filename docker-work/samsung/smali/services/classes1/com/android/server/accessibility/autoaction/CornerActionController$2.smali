.class public Lcom/android/server/accessibility/autoaction/CornerActionController$2;
.super Ljava/lang/Object;
.source "CornerActionController.java"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/CornerActionController;->showGestureActionTip(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public final synthetic val$corner:I

.field public final synthetic val$shownTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;JI)V
    .registers 5

    .line 328
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iput-wide p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->val$shownTime:J

    iput p4, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->val$corner:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 5

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    iget-wide v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->val$shownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetdismissForGesture(Lcom/android/server/accessibility/autoaction/CornerActionController;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 333
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_44

    .line 343
    :cond_27
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmTipAnchorView(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmWindowManager(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmTipAnchorView(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 345
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fputmTipAnchorView(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/view/View;)V

    :cond_44
    :goto_44
    return-void
.end method
