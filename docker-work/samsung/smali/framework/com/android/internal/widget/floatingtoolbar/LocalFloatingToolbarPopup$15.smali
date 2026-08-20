.class Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$15;
.super Landroid/view/View$AccessibilityDelegate;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 2029
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$15;->this$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 2032
    const/16 v0, 0x10

    if-ne p2, v0, :cond_6

    .line 2033
    const/4 v0, 0x0

    return v0

    .line 2035
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
