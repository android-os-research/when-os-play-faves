.class Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDefaultDeviceTargetView(ILandroid/view/ViewGroup;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 6843
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 6846
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const-string v1, "b"

    const-string v2, "a"

    if-eqz v0, :cond_3b

    .line 6847
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "PROF"

    if-eqz v0, :cond_32

    .line 6848
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 6850
    :cond_32
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6853
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    const-string v3, "SHAR"

    if-eqz v0, :cond_d1

    .line 6854
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 6855
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6856
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6857
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 6858
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 6861
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 6864
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 6865
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6868
    :cond_93
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_a6

    .line 6869
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6872
    :cond_a6
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_c8

    .line 6873
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 6874
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 6875
    return-void

    .line 6877
    :cond_c0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6878
    return-void

    .line 6880
    :cond_c8
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .end local v0    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    goto/16 :goto_164

    .line 6881
    :cond_d1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_164

    .line 6882
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 6883
    .restart local v0    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6884
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6885
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 6886
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 6889
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 6892
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_127

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 6893
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6896
    :cond_127
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_13a

    .line 6897
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6900
    :cond_13a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_15c

    .line 6901
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 6902
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 6903
    return-void

    .line 6905
    :cond_154
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6906
    return-void

    .line 6908
    :cond_15c
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto :goto_165

    .line 6881
    .end local v0    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_164
    :goto_164
    nop

    .line 6910
    :goto_165
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 6911
    return-void
.end method
