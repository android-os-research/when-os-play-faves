.class public Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;
.super Ljava/lang/Object;
.source "AutoActionController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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

.field public final synthetic val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .registers 3

    .line 616
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 3

    .line 619
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fputmCornerActionType(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;I)V

    .line 620
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->destroy()V

    return-void
.end method
