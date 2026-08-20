.class public Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;
.super Lcom/android/server/ssrm/common/ALocalBroadcastEG;
.source "GestureDetectEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ALocalBroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;",
        "Lcom/android/server/ssrm/common/intent/gesture/AGestureDetectER;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_PERFROMANCE_GESTURE_DETECT:Ljava/lang/String; = "com.sec.android.app.sdhms.GestureDetect"

.field private static final EXTRA_GESTURE_DETECT_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private gesttureDetectE:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

.field private gestureAllValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ALocalBroadcastEG;-><init>()V

    .line 21
    new-instance v0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    invoke-direct {v0}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;->gesttureDetectE:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 48
    const-class v0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.sdhms.GestureDetect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method protected init()V
    .registers 1

    .line 27
    return-void
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 33
    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;->gestureAllValue:Ljava/lang/String;

    .line 35
    :cond_e
    iget-object v1, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;->gesttureDetectE:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    iget-object v2, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;->gestureAllValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->setGestureAllValue(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectEG;->gesttureDetectE:Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;

    return-object v1
.end method
