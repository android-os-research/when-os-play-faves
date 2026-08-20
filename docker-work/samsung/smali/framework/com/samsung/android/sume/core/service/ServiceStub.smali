.class public abstract Lcom/samsung/android/sume/core/service/ServiceStub;
.super Landroid/app/Service;
.source "ServiceStub.java"

# interfaces
.implements Lcom/samsung/android/sume/core/service/ServiceController;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist controllerId:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist mediaFilterControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/core/controller/MediaFilterController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/samsung/android/sume/core/service/ServiceStub;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->controllerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->mediaFilterControllers:Ljava/util/Map;

    return-void
.end method

.method static synthetic blacklist lambda$request$0(Lcom/samsung/android/sume/core/message/Request;Ljava/lang/Integer;)Z
    .registers 4
    .param p0, "request"    # Lcom/samsung/android/sume/core/message/Request;
    .param p1, "it"    # Ljava/lang/Integer;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method protected abstract blacklist createGraph(Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)Lcom/samsung/android/sume/core/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;",
            ")",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist createMediaFilterController()I
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->controllerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 74
    .local v0, "id":I
    new-instance v1, Lcom/samsung/android/sume/core/controller/MediaFilterController;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/core/controller/MediaFilterController;-><init>(I)V

    .line 75
    .local v1, "mediaController":Lcom/samsung/android/sume/core/controller/MediaFilterController;
    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->mediaFilterControllers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v1, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->setOnEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    .line 77
    return v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onIntentReceived(Landroid/content/Intent;)V

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onIntentReceived(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 56
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string/jumbo v1, "start-foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 60
    const-string v1, "activity-intent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 61
    .local v1, "activityIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/service/ServiceStub;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v1    # "activityIntent":Landroid/content/Intent;
    goto :goto_4c

    .line 62
    :cond_42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/service/ServiceStub;->stopForegroundServiceStub()V

    goto :goto_4d

    .line 62
    :cond_4c
    :goto_4c
    nop

    .line 65
    :goto_4d
    return-void
.end method

.method public whitelist onRebind(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onIntentReceived(Landroid/content/Intent;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 37
    sget-object v0, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onIntentReceived(Landroid/content/Intent;)V

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public blacklist releaseMediaFilterController(I)V
    .registers 4
    .param p1, "id"    # I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->mediaFilterControllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;

    .line 83
    .local v0, "mediaFilterController":Lcom/samsung/android/sume/core/controller/MediaFilterController;
    if-eqz v0, :cond_11

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->release()V

    .line 85
    :cond_11
    return-void
.end method

.method public blacklist request(ILcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/ResponseHolder;
    .registers 9
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/samsung/android/sume/core/message/Request;

    .line 92
    new-instance v0, Lcom/samsung/android/sume/core/message/ResponseHolder;

    invoke-direct {v0, p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;-><init>(Lcom/samsung/android/sume/core/message/Request;)V

    .line 94
    .local v0, "responseHolder":Lcom/samsung/android/sume/core/message/ResponseHolder;
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceStub;->mediaFilterControllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/controller/MediaFilterController;

    .line 96
    .local v1, "mediaFilterController":Lcom/samsung/android/sume/core/controller/MediaFilterController;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_48

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x384

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v5, 0x388

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 96
    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2}, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Request;)V

    .line 98
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 99
    sget-object v2, Lcom/samsung/android/sume/core/service/ServiceStub;->TAG:Ljava/lang/String;

    const-string v3, "no mediaFilterController given, maybe canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v2, 0x2be

    invoke-static {v2}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    .line 101
    return-object v0

    .line 104
    :cond_48
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7e

    goto :goto_7d

    .line 114
    :sswitch_50
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->release()V

    .line 115
    invoke-static {p2}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    .line 116
    goto :goto_7d

    .line 106
    :sswitch_5b
    const-string v4, "graph"

    invoke-virtual {p2, v4}, Lcom/samsung/android/sume/core/message/Request;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    .line 107
    .local v4, "descriptorGraph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    if-eqz v4, :cond_66

    goto :goto_67

    :cond_66
    move v2, v3

    :goto_67
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "no descriptorGraph"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/samsung/android/sume/core/service/ServiceStub;->createGraph(Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)Lcom/samsung/android/sume/core/graph/Graph;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->setMediaFilterGraph(Lcom/samsung/android/sume/core/graph/Graph;)V

    .line 110
    invoke-static {p2}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    .line 111
    nop

    .line 120
    .end local v4    # "descriptorGraph":Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    :goto_7d
    return-object v0

    :sswitch_data_7e
    .sparse-switch
        0x384 -> :sswitch_5b
        0x388 -> :sswitch_50
    .end sparse-switch
.end method

.method protected abstract blacklist startForegroundServiceStub(Landroid/content/Intent;)V
.end method

.method protected abstract blacklist stopForegroundServiceStub()V
.end method
