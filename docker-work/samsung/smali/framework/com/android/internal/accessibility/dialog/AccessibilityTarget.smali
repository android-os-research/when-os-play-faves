.class public abstract Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.super Ljava/lang/Object;
.source "AccessibilityTarget.java"

# interfaces
.implements Lcom/android/internal/accessibility/dialog/TargetOperations;
.implements Lcom/android/internal/accessibility/dialog/OnTargetSelectedListener;
.implements Lcom/android/internal/accessibility/dialog/OnTargetCheckedChangeListener;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFragmentType:I

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mShortcutEnabled:Z

.field private blacklist mShortcutType:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "fragmentType"    # I
    .param p4, "isShortcutSwitched"    # Z
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "label"    # Ljava/lang/CharSequence;
    .param p7, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "key"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    .line 69
    iput p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    .line 70
    iput p3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    .line 71
    iput-boolean p4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    .line 72
    iput-object p5, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    .line 74
    iput-object p7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object p8, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getFragmentType()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    return v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getShortcutType()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    return v0
.end method

.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isShortcutEnabled()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    return v0
.end method

.method public blacklist onCheckedChanged(Z)V
    .registers 5
    .param p1, "isChecked"    # Z

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->setShortcutEnabled(Z)V

    .line 135
    if-eqz p1, :cond_19

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToUserType(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2c

    .line 138
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToUserType(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 140
    :goto_2c
    return-void
.end method

.method public blacklist onSelected()V
    .registers 4

    .line 113
    nop

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 115
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 128
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected shortcut type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityDirectAccess(Ljava/lang/String;)V

    .line 125
    return-void

    .line 120
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(Ljava/lang/String;)V

    .line 121
    return-void

    .line 117
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 118
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist setShortcutEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    .line 154
    return-void
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    goto :goto_6

    :cond_5
    move v1, v0

    .line 85
    .local v1, "isEditMenuMode":Z
    :goto_6
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v2, 0x2

    if-ne p2, v2, :cond_23

    .line 88
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6c

    .line 90
    :cond_23
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3f

    .line 92
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const v2, 0x1040152

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getPrimaryDarkColorId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6c

    .line 94
    :cond_3f
    const/4 v0, 0x4

    if-ne p2, v0, :cond_56

    .line 95
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const v2, 0x1040151

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6c

    .line 97
    :cond_56
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6c

    .line 98
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const v2, 0x1040150

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method
