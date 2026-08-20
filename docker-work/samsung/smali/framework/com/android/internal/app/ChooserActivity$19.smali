.class Lcom/android/internal/app/ChooserActivity$19;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->setSpannableLinkText(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 9384
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 9387
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 9388
    .local v0, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v1

    const-string v2, "b"

    const-string v3, "a"

    if-eqz v1, :cond_35

    .line 9389
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "PROF"

    if-eqz v1, :cond_2e

    .line 9390
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 9392
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 9395
    :cond_35
    :goto_35
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    const-string v4, "SHAR"

    if-eqz v1, :cond_b7

    .line 9396
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9397
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 9398
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 9399
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 9402
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 9405
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 9406
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9409
    :cond_7b
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_8e

    .line 9410
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9413
    :cond_8e
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_ac

    .line 9414
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 9415
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 9416
    return-void

    .line 9418
    :cond_a2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9419
    return-void

    .line 9421
    :cond_ac
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto/16 :goto_135

    .line 9422
    :cond_b7
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_135

    .line 9423
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9424
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 9425
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 9426
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 9429
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 9432
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 9433
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9436
    :cond_fb
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_10e

    .line 9437
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9440
    :cond_10e
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_12c

    .line 9441
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 9442
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 9443
    return-void

    .line 9445
    :cond_122
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9446
    return-void

    .line 9448
    :cond_12c
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 9450
    :cond_135
    :goto_135
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 9451
    return-void
.end method
