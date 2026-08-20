.class public Lcom/android/server/sepunion/cover/CoverHideAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$mremoveViewFromWindow(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    .line 125
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
