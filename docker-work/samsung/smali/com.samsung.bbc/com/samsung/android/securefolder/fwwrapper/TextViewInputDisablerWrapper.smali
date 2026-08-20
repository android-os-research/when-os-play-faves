.class public Lcom/samsung/android/securefolder/fwwrapper/TextViewInputDisablerWrapper;
.super Ljava/lang/Object;
.source "TextViewInputDisablerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setInputEnabled(Landroid/widget/TextView;Z)V
    .registers 3

    .line 9
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    return-void
.end method
