.class Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
.source "ToggleAccessibilityServiceTarget.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 44
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 48
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 72
    const v0, 0x1040152

    goto :goto_15

    .line 73
    :cond_12
    const v0, 0x1040151

    :goto_15
    nop

    .line 74
    .local v0, "statusResId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    goto :goto_9

    :cond_8
    move v1, v0

    .line 58
    .local v1, "isEditMenuMode":Z
    :goto_9
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    const/16 v0, 0x8

    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 62
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getPrimaryDarkColorId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_40

    .line 64
    :cond_35
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    :goto_40
    return-void
.end method
