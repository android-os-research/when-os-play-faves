.class Lcom/android/internal/policy/DecorView$13;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Landroid/view/View$OnAddRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 3623
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$13;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 3625
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$13;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3626
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$13;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    .line 3628
    :cond_d
    return-void
.end method

.method public blacklist onViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 3631
    return-void
.end method
