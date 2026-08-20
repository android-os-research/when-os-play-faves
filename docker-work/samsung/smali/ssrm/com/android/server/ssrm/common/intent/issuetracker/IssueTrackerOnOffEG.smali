.class public Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "IssueTrackerOnOffEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;",
        "Lcom/android/server/ssrm/common/intent/issuetracker/AIssueTrackerOnOffER;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_SERIALIZABLE_ONOFF:Ljava/lang/String; = "ONOFF"

.field private static final ISSUE_TRACKER_ONOFF_INTENT:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ONOFF"


# instance fields
.field private mIssueTrackerOn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;->mIssueTrackerOn:Z

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 38
    const-class v0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;->mIssueTrackerOn:Z

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1d

    const-string v1, "ONOFF"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;->mIssueTrackerOn:Z

    .line 26
    :cond_1d
    new-instance v1, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;

    iget-boolean v2, p0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffEG;->mIssueTrackerOn:Z

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;-><init>(Z)V

    return-object v1
.end method
