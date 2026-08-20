.class public Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "SipStateChangedEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;",
        "Lcom/android/server/ssrm/common/intent/sip/ASipStateChangedER;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_BOOLEAN_IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"


# instance fields
.field private mVisibleWindow:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;->mVisibleWindow:Z

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 39
    const-class v0, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method protected init()V
    .registers 1

    .line 21
    return-void
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 25
    const-string v0, "AxT9IME.isVisibleWindow"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedEG;->mVisibleWindow:Z

    .line 27
    new-instance v1, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    invoke-direct {v1, v0}, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;-><init>(Z)V

    return-object v1
.end method
