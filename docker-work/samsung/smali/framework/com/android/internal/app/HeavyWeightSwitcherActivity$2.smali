.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;
.super Ljava/lang/Object;
.source "HeavyWeightSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 141
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .line 144
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->finishHeavyWeightApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 146
    goto :goto_9

    .line 145
    :catch_8
    move-exception v0

    .line 148
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    if-eqz v0, :cond_1e

    .line 149
    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-object v2, v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x2000000

    const/high16 v6, 0x2000000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_2a

    .line 153
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-object v2, v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_2a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_9 .. :try_end_2a} :catch_2b

    .line 157
    :goto_2a
    goto :goto_33

    .line 155
    :catch_2b
    move-exception v0

    .line 156
    .local v0, "ex":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "HeavyWeightSwitcherActivity"

    const-string v2, "Failure starting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "ex":Landroid/content/IntentSender$SendIntentException;
    :goto_33
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    .line 159
    return-void
.end method
