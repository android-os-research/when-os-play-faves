.class public Lcom/android/server/accessibility/autoaction/CornerActionController$4;
.super Ljava/lang/Object;
.source "CornerActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V
    .registers 3

    .line 364
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$4;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$4;->val$corner:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$4;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$fgetmTipPopup(Lcom/android/server/accessibility/autoaction/CornerActionController;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$sfgetPOPUP_DIRECTION()[I

    move-result-object v1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$4;->val$corner:I

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method
