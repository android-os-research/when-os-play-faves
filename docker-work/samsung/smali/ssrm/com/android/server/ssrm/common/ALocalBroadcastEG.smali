.class public abstract Lcom/android/server/ssrm/common/ALocalBroadcastEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "ALocalBroadcastEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/android/server/ssrm/common/IEvent;",
        "R::",
        "Lcom/android/server/ssrm/common/IEReceiver<",
        "TE;>;>",
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "TE;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    .local p0, "this":Lcom/android/server/ssrm/common/ALocalBroadcastEG;, "Lcom/android/server/ssrm/common/ALocalBroadcastEG<TE;TR;>;"
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    .local p0, "this":Lcom/android/server/ssrm/common/ALocalBroadcastEG;, "Lcom/android/server/ssrm/common/ALocalBroadcastEG<TE;TR;>;"
    invoke-static {p1}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/common/ALocalBroadcastEG;->bcimpl:Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;

    invoke-virtual {p0}, Lcom/android/server/ssrm/common/ALocalBroadcastEG;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/common/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    return-void
.end method
