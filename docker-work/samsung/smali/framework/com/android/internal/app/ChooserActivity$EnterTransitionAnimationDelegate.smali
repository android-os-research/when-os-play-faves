.class Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnterTransitionAnimationDelegate"
.end annotation


# instance fields
.field private blacklist mOffsetCalculated:Z

.field private blacklist mPreviewReady:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2

    .line 7671
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7672
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    .line 7673
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method private blacklist maybeStartListenForLayout()V
    .registers 2

    .line 7694
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_2c

    .line 7695
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7696
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    goto :goto_2c

    .line 7698
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7699
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 7702
    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method blacklist markImagePreviewReady()V
    .registers 2

    .line 7680
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    if-nez v0, :cond_a

    .line 7681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    .line 7682
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->maybeStartListenForLayout()V

    .line 7684
    :cond_a
    return-void
.end method

.method blacklist markOffsetCalculated()V
    .registers 2

    .line 7687
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    if-nez v0, :cond_a

    .line 7688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    .line 7689
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->maybeStartListenForLayout()V

    .line 7691
    :cond_a
    return-void
.end method

.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 7707
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7708
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    .line 7709
    return-void
.end method

.method blacklist postponeTransition()V
    .registers 2

    .line 7676
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->postponeEnterTransition()V

    .line 7677
    return-void
.end method
