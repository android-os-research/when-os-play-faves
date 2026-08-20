.class public Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;
.super Ljava/lang/Object;
.source "AutoActionController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->showActionSelectPopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final synthetic val$actions:[Ljava/lang/String;

.field public final synthetic val$corner:I

.field public final synthetic val$displayId:I

.field public final synthetic val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V
    .registers 6

    .line 623
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$actions:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$displayId:I

    iput p5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$corner:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 626
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->dismiss()V

    .line 627
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 628
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fgetmCornerActionController(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)Lcom/android/server/accessibility/autoaction/CornerActionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$actions:[Ljava/lang/String;

    aget-object p1, v2, p1

    iget v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$displayId:I

    iget v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$corner:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(Ljava/lang/String;II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fputmCornerActionType(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;I)V

    .line 629
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fgetmCornerActionType(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3d

    .line 630
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fgetmIsPauseAutoClick(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 631
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fputmCornerActionType(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;I)V

    .line 632
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$mshowToastToggleAutoClick(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    :cond_3d
    return v0
.end method
