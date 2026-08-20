.class public Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;
.super Landroid/content/BroadcastReceiver;
.source "ABroadcastEG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/common/ABroadcastEG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BroadcastReceiverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/common/ABroadcastEG;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/common/ABroadcastEG;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/common/ABroadcastEG;

    .line 37
    .local p0, "this":Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;, "Lcom/android/server/ssrm/common/ABroadcastEG<TE;TR;>.BroadcastReceiverImpl;"
    iput-object p1, p0, Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;->this$0:Lcom/android/server/ssrm/common/ABroadcastEG;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 40
    .local p0, "this":Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;, "Lcom/android/server/ssrm/common/ABroadcastEG<TE;TR;>.BroadcastReceiverImpl;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;->this$0:Lcom/android/server/ssrm/common/ABroadcastEG;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ssrm/common/ABroadcastEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;

    move-result-object v0

    .line 41
    .local v0, "e":Lcom/android/server/ssrm/common/IEvent;, "TE;"
    if-eqz v0, :cond_12

    .line 42
    iget-object v1, p0, Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;->this$0:Lcom/android/server/ssrm/common/ABroadcastEG;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/common/ABroadcastEG;->setLastEvent(Lcom/android/server/ssrm/common/IEvent;)V

    .line 43
    iget-object v1, p0, Lcom/android/server/ssrm/common/ABroadcastEG$BroadcastReceiverImpl;->this$0:Lcom/android/server/ssrm/common/ABroadcastEG;

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/ABroadcastEG;->notifyReceivers()V

    .line 45
    :cond_12
    return-void
.end method
