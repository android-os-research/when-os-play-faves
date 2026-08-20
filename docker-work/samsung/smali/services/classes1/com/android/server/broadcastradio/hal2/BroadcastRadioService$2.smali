.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 6

    const-string v0, "BcRadio2Srv"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceDied("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    long-to-int p1, p1

    .line 103
    :try_start_24
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    if-eqz p2, :cond_3e

    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions(Ljava/lang/Integer;)V

    .line 108
    :cond_3e
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_4c

    const-string p0, "BcRadio2Srv"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " died; removed RadioModule with ID "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit v0

    return-void

    .line 115
    :cond_8b
    monitor-exit v0

    return-void

    :catchall_8d
    move-exception p0

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_24 .. :try_end_8f} :catchall_8d

    throw p0
.end method
