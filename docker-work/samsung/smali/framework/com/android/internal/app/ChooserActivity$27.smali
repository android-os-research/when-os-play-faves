.class Lcom/android/internal/app/ChooserActivity$27;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semAddLinkSharingButton(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 11010
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 11013
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11014
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 11015
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 11018
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 11021
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 11022
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 11025
    :cond_31
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v0, :cond_42

    .line 11026
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 11029
    :cond_42
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v0, :cond_5e

    .line 11030
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 11031
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 11032
    return-void

    .line 11034
    :cond_56
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11035
    return-void

    .line 11037
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 11038
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 11039
    return-void
.end method
