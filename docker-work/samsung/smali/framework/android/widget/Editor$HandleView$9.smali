.class Landroid/widget/Editor$HandleView$9;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .line 7043
    iput-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 7046
    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7047
    return-void

    .line 7049
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 7050
    return-void
.end method
