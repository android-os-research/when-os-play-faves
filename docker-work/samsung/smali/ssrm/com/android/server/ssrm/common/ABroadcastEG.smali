.class public abstract Lcom/android/server/ssrm/common/ABroadcastEG;
.super Lcom/android/server/ssrm/common/AbstractEG;
.source "ABroadcastEG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/android/server/ssrm/common/IEvent;",
        "R::",
        "Lcom/android/server/ssrm/common/IEReceiver<",
        "TE;>;>",
        "Lcom/android/server/ssrm/common/AbstractEG<",
        "TE;TR;>;"
    }
.end annotation


# instance fields
.field protected bcimpl:Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/common/ABroadcastEG<",
            "TE;TR;>.BroadcastReceiverImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    .local p0, "this":Lcom/android/server/ssrm/common/ABroadcastEG;, "Lcom/android/server/ssrm/common/ABroadcastEG<TE;TR;>;"
    invoke-direct {p0}, Lcom/android/server/ssrm/common/AbstractEG;-><init>()V

    .line 21
    new-instance v0, Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;-><init>(Lcom/android/server/ssrm/common/ABroadcastEG;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/ABroadcastEG;->bcimpl:Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;

    return-void
.end method


# virtual methods
.method public deregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    .local p0, "this":Lcom/android/server/ssrm/common/ABroadcastEG;, "Lcom/android/server/ssrm/common/ABroadcastEG<TE;TR;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/ABroadcastEG;->bcimpl:Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    return-void
.end method

.method public abstract getGeneratorIdentifier()Ljava/lang/String;
.end method

.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public abstract processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")TE;"
        }
    .end annotation
.end method

.method public register(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    .local p0, "this":Lcom/android/server/ssrm/common/ABroadcastEG;, "Lcom/android/server/ssrm/common/ABroadcastEG<TE;TR;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/ABroadcastEG;->bcimpl:Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;

    invoke-virtual {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    return-void
.end method
