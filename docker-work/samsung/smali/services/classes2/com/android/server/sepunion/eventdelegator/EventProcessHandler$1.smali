.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "EventProcessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6

    .line 295
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 298
    iget-object v1, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string v2, "monitor_call_state"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 299
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v0, :cond_41

    .line 301
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V

    goto :goto_4a

    .line 303
    :cond_41
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-void
.end method
