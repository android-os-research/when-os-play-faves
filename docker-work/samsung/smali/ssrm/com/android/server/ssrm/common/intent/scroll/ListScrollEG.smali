.class public Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;
.super Lcom/android/server/ssrm/common/ALocalBroadcastEG;
.source "ListScrollEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ALocalBroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;",
        "Lcom/android/server/ssrm/common/intent/scroll/AListScrollER;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_PERFROMANCE_LIST_SCROLL:Ljava/lang/String; = "com.sec.android.app.sdhms.ListScroll"

.field private static final EXTRA_LIST_SCROLL_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private listScrollE:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

.field private mBIsListScroll:Z

.field private mSIsListScroll:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ALocalBroadcastEG;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mBIsListScroll:Z

    .line 21
    const-string v0, "FLASE"

    iput-object v0, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mSIsListScroll:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->listScrollE:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 55
    const-class v0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.sdhms.ListScroll"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method protected init()V
    .registers 1

    .line 29
    return-void
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 35
    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mSIsListScroll:Ljava/lang/String;

    .line 37
    :cond_e
    iget-object v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mSIsListScroll:Ljava/lang/String;

    const-string v2, "TRUE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mBIsListScroll:Z

    goto :goto_29

    .line 39
    :cond_1c
    iget-object v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mSIsListScroll:Ljava/lang/String;

    const-string v2, "FALSE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mBIsListScroll:Z

    .line 42
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->listScrollE:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    iget-boolean v2, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->mBIsListScroll:Z

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;->setListScrollAllValue(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollEG;->listScrollE:Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    return-object v1
.end method
