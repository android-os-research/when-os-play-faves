.class public Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;
.super Ljava/lang/Object;
.source "AutoActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->showToastToggleAutoClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V
    .registers 2

    .line 641
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;

    move-result-object v0

    .line 645
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$fgetmIsPauseAutoClick(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)Z

    move-result p0

    if-eqz p0, :cond_14

    const p0, 0x10401e7

    goto :goto_17

    :cond_14
    const p0, 0x10401e8

    :goto_17
    const/4 v1, 0x0

    .line 644
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 646
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
