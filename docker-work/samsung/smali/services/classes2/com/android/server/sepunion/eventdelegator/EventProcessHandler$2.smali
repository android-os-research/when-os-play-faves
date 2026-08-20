.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;
.super Lcom/android/internal/content/PackageMonitor;
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

    .line 311
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 5

    .line 330
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageAdded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "monitor_package_state;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 333
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 334
    iget-object v1, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 335
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz p2, :cond_53

    .line 337
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    const-string/jumbo v0, "package_added"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 339
    :cond_53
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 5

    .line 314
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageModified(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 318
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 319
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v0, :cond_53

    .line 321
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    const-string/jumbo v1, "package_modified"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 323
    :cond_53
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 346
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageRemoved() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "monitor_package_state;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 349
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 350
    iget-object v1, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 351
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz p2, :cond_53

    .line 353
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-static {p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object p0

    const-string/jumbo v0, "package_removed"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 355
    :cond_53
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method
