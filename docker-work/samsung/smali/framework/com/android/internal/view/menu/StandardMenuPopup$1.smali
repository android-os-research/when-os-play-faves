.class Lcom/android/internal/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/menu/StandardMenuPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/menu/StandardMenuPopup;

    .line 68
    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-$$Nest$fgetmIsParentThemeDeviceDefault(Lcom/android/internal/view/menu/StandardMenuPopup;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_29

    .line 78
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-$$Nest$fgetmPopup(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->show()V

    goto :goto_2e

    .line 75
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 80
    .end local v0    # "anchor":Landroid/view/View;
    :goto_2e
    goto :goto_61

    .line 84
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-$$Nest$fgetmPopup(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_61

    .line 85
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/StandardMenuPopup;->-$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .restart local v0    # "anchor":Landroid/view/View;
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_5c

    .line 90
    :cond_52
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->-$$Nest$fgetmPopup(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->show()V

    goto :goto_61

    .line 87
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup$1;->this$0:Lcom/android/internal/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    .line 95
    .end local v0    # "anchor":Landroid/view/View;
    :cond_61
    :goto_61
    return-void
.end method
