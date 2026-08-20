.class public Lcom/android/server/ssrm/common/intent/shutdown/ShutdownEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "ShutdownEG.java"

# interfaces
.implements Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;",
        "Lcom/android/server/ssrm/common/intent/shutdown/AShutdownER;",
        ">;",
        "Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 26
    const-class v0, Lcom/android/server/ssrm/common/intent/shutdown/ShutdownEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/shutdown/ShutdownEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 14
    return-object p0
.end method
