.class public Lcom/android/server/ssrm/common/intent/request/SsrmRequestEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "SsrmRequestEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;",
        "Lcom/android/server/ssrm/common/intent/request/ASsrmRequestER;",
        ">;"
    }
.end annotation


# static fields
.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.samsung.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 44
    const-class v0, Lcom/android/server/ssrm/common/intent/request/SsrmRequestEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    .line 23
    .local v1, "statusName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 25
    .local v2, "statusValue":Z
    if-eqz v0, :cond_2c

    .line 26
    const-string v3, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const/4 v3, 0x0

    const-string v4, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 28
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    const-string v3, "Camera_singletake"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 29
    new-instance v3, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;

    invoke-direct {v3, v1, v2}, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;-><init>(Ljava/lang/String;Z)V

    return-object v3

    .line 32
    :cond_2c
    const/4 v3, 0x0

    return-object v3
.end method
