.class public Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;
.super Ljava/lang/Object;
.source "SemGoodCatchService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoodCatchClient"
.end annotation


# instance fields
.field public mCb:Landroid/os/IBinder;

.field public mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

.field public mFunctions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mModule:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    .registers 7

    .line 197
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    .line 198
    iput-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mModule:Ljava/lang/String;

    .line 199
    iput-object p5, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    .line 200
    iput-object p4, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    .line 202
    monitor-enter p1

    const/4 p2, 0x0

    .line 203
    :goto_14
    :try_start_14
    array-length p4, p3

    if-ge p2, p4, :cond_23

    .line 204
    iget-object p4, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    aget-object p5, p3, p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 206
    :cond_23
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_25

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchClients(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 259
    :try_start_7
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmGoodCatchClients(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->release()V

    .line 261
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mModule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    .line 275
    :try_start_19
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 276
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Function:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 279
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_19 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public has(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mModule:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    .line 213
    monitor-exit v0

    return p0

    .line 214
    :cond_16
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public isOn(Ljava/lang/String;)Z
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 254
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public off()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V

    goto :goto_d

    .line 226
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public off(Ljava/lang/String;)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2c

    .line 245
    :try_start_b
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    invoke-interface {p0, p1}, Lcom/samsung/android/sepunion/IGoodCatchDispatcher;->onStop(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_2b

    :catch_11
    move-exception p0

    .line 247
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void

    :catchall_2c
    move-exception p0

    .line 243
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public on(Ljava/lang/String;)V
    .registers 5

    .line 230
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2c

    .line 234
    :try_start_b
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    invoke-interface {p0, p1}, Lcom/samsung/android/sepunion/IGoodCatchDispatcher;->onStart(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_2b

    :catch_11
    move-exception p0

    .line 236
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void

    :catchall_2c
    move-exception p0

    .line 232
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public release()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 266
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    const/4 v2, 0x0

    .line 267
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 268
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mCb:Landroid/os/IBinder;

    :cond_d
    return-void
.end method
