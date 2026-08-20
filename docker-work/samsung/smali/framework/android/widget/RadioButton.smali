.class public Landroid/widget/RadioButton;
.super Landroid/widget/CompoundButton;
.source "RadioButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 91
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 114
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040c47

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_12
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104084b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 96
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_3f

    .line 98
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 99
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v1

    if-nez v1, :cond_2b

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    .line 100
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_3f

    .line 103
    :cond_2b
    nop

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    .line 103
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 108
    .end local v0    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_3f
    :goto_3f
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 84
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 85
    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 87
    :cond_9
    return-void
.end method
