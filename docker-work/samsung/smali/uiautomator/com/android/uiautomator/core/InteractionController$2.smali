.class Lcom/android/uiautomator/core/InteractionController$2;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;

    .line 270
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    invoke-static {v0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->-$$Nest$mtouchDown(Lcom/android/uiautomator/core/InteractionController;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 274
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 275
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$x:I

    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$y:I

    invoke-static {v0, v1, v2}, Lcom/android/uiautomator/core/InteractionController;->-$$Nest$mtouchUp(Lcom/android/uiautomator/core/InteractionController;II)Z

    .line 277
    :cond_1a
    return-void
.end method
