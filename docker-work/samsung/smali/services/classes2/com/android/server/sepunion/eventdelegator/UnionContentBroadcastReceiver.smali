.class public Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnionContentBroadcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, -0x1

    .line 29
    :goto_16
    sget-object v1, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_3e

    .line 32
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    goto :goto_58

    .line 34
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user id: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .line 38
    :goto_58
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 39
    iget-object v1, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz p1, :cond_84

    .line 41
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V

    goto :goto_84

    .line 47
    :cond_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We dont have any callback or component to receive action - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return-void
.end method
