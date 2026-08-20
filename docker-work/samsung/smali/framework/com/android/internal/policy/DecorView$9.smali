.class Lcom/android/internal/policy/DecorView$9;
.super Landroid/database/ContentObserver;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2804
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 2807
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2808
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmMultiSplitHandler(Lcom/android/internal/policy/DecorView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    .line 2810
    .local v0, "exist":Z
    :goto_21
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2811
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_34

    .line 2813
    :cond_2f
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 2815
    :goto_34
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmMultiSplitHandler(Lcom/android/internal/policy/DecorView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;

    move-result-object v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    if-eq v0, v1, :cond_48

    .line 2816
    iget-object v1, p0, Lcom/android/internal/policy/DecorView$9;->this$0:Lcom/android/internal/policy/DecorView;

    const-string/jumbo v2, "settings_option"

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$mrequestInvalidateRenderNode(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    .line 2820
    .end local v0    # "exist":Z
    :cond_48
    return-void
.end method
