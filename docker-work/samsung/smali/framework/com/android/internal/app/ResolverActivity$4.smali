.class Lcom/android/internal/app/ResolverActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 2614
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2618
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2619
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2620
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2621
    return-void

    .line 2624
    :cond_1d
    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2626
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_31

    .line 2627
    return-void

    .line 2630
    :cond_31
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 2631
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2632
    return-void

    .line 2635
    :cond_43
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 2636
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->markWorkProfileEnabledBroadcastReceived()V

    goto :goto_56

    .line 2639
    :cond_50
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 2642
    :goto_56
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2643
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2644
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    goto :goto_79

    .line 2646
    :cond_72
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2648
    :goto_79
    return-void
.end method
