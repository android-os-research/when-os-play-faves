.class public Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;
.super Ljava/lang/Object;
.source "IssueTrackerOnOffE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mIssueTrackerOn:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "issueTrackerOn"    # Z

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;->mIssueTrackerOn:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isIssueTrackerOn()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/issuetracker/IssueTrackerOnOffE;->mIssueTrackerOn:Z

    return v0
.end method
