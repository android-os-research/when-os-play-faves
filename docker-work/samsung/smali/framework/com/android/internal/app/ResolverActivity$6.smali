.class Lcom/android/internal/app/ResolverActivity$6;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->semStartActivtyAsUserAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$activity:Landroid/app/Activity;

.field final synthetic blacklist val$cti:Lcom/android/internal/app/chooser/TargetInfo;

.field final synthetic blacklist val$options:Landroid/os/Bundle;

.field final synthetic blacklist val$user:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 3148
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$6;->val$cti:Lcom/android/internal/app/chooser/TargetInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$6;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$6;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3166
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3155
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    .line 3157
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->val$cti:Lcom/android/internal/app/chooser/TargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$6;->val$options:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$6;->val$user:Landroid/os/UserHandle;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_10} :catch_11

    .line 3160
    goto :goto_1a

    .line 3158
    :catch_11
    move-exception v0

    .line 3159
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "startActivity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3161
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3162
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3170
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3151
    return-void
.end method
