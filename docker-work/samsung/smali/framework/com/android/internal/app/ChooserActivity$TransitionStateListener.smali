.class public Lcom/android/internal/app/ChooserActivity$TransitionStateListener;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionStateListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 15489
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 15485
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 15493
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 15497
    return-void
.end method

.method public whitelist onTransitionStart(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 15481
    return-void
.end method
