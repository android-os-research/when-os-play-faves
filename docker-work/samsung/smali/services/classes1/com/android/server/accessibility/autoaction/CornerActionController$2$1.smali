.class public Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;
.super Ljava/lang/Object;
.source "CornerActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/CornerActionController$2;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/CornerActionController$2;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController$2;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;->this$1:Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;->this$1:Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmTipPopup(Lcom/android/server/accessibility/autoaction/CornerActionController;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;->this$1:Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmTipPopup(Lcom/android/server/accessibility/autoaction/CornerActionController;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$sfgetPOPUP_DIRECTION()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;->this$1:Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    iget v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->val$corner:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 339
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2$1;->this$1:Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fputdismissForGesture(Lcom/android/server/accessibility/autoaction/CornerActionController;Z)V

    return-void
.end method
