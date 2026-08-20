.class Landroid/accounts/ChooseTypeAndAccountActivity$CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "ChooseTypeAndAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedTextView"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 706
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 708
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity$CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    .line 709
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wallpapertheme_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_46

    .line 711
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity$CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    move v0, v1

    .line 713
    .local v0, "isNightMode":Z
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity$CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_3b

    .line 714
    const v2, 0x106031d

    goto :goto_3e

    .line 715
    :cond_3b
    const v2, 0x106031e

    :goto_3e
    const/4 v3, 0x0

    .line 713
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 716
    .local v1, "textColor":I
    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity$CheckedTextView;->setTextColor(I)V

    .line 718
    .end local v0    # "isNightMode":Z
    .end local v1    # "textColor":I
    :cond_46
    return-void
.end method
