.class public Landroid/net/NetworkFactoryImpl;
.super Landroid/net/NetworkFactoryLegacyImpl;
.source "NetworkFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;
    }
.end annotation


# static fields
.field public static final CMD_CANCEL_REQUEST:I = 0x2

.field public static final CMD_LISTEN_TO_ALL_REQUESTS:I = 0x6

.field public static final CMD_OFFER_NETWORK:I = 0x5

.field public static final CMD_REQUEST_NETWORK:I = 0x1

.field public static final CMD_SET_FILTER:I = 0x4

.field public static final CMD_SET_SCORE:I = 0x3

.field public static final DBG:Z = true

.field public static final INVINCIBLE_SCORE:Landroid/net/NetworkScore;

.field public static final VDBG:Z = false


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

.field public mScore:Landroid/net/NetworkScore;


# direct methods
.method public static synthetic $r8$lambda$jawFpVlErUG1--waBKmGfN598J0(Landroid/net/NetworkFactoryImpl;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkFactoryImpl;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAddRequest(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveRequest(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/16 v1, 0x3e8

    .line 57
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkFactoryImpl;->INVINCIBLE_SCORE:Landroid/net/NetworkScore;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V
    .registers 5

    if-eqz p4, :cond_3

    goto :goto_b

    .line 134
    :cond_3
    invoke-static {}, Landroid/net/NetworkCapabilities$Builder;->withoutDefaultCapabilities()Landroid/net/NetworkCapabilities$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p4

    .line 132
    :goto_b
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/NetworkFactoryLegacyImpl;-><init>(Landroid/net/NetworkFactory;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;)V

    .line 109
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 112
    new-instance p1, Landroid/net/NetworkScore$Builder;

    invoke-direct {p1}, Landroid/net/NetworkScore$Builder;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 114
    new-instance p1, Landroid/net/NetworkFactoryImpl$1;

    invoke-direct {p1, p0}, Landroid/net/NetworkFactoryImpl$1;-><init>(Landroid/net/NetworkFactoryImpl;)V

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    .line 125
    new-instance p1, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/net/NetworkFactoryImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkFactoryImpl;)V

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .registers 4

    .line 255
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    if-eqz v0, :cond_1a

    .line 257
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-boolean p1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    if-eqz p1, :cond_1a

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    iget-object p1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_1a
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 270
    :cond_9
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 271
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->reevaluateAllRequests()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 311
    invoke-virtual {p0}, Landroid/net/NetworkFactoryImpl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_32
    return-void
.end method

.method public getRequestCount()I
    .registers 1

    .line 307
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final handleAddRequest(Landroid/net/NetworkRequest;)V
    .registers 5

    .line 238
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    if-nez v0, :cond_2d

    .line 240
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;-><init>(Landroid/net/NetworkRequest;)V

    .line 242
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    iget-object v2, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_2d
    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v1, p1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    .line 249
    iput-boolean v1, v0, Landroid/net/NetworkFactoryImpl$NetworkRequestInfo;->requested:Z

    .line 250
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_3d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    goto :goto_31

    .line 210
    :pswitch_6
    sget-object p1, Landroid/net/NetworkFactoryImpl;->INVINCIBLE_SCORE:Landroid/net/NetworkScore;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleOfferNetwork(Landroid/net/NetworkScore;)V

    goto :goto_31

    .line 206
    :pswitch_c
    iget-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleOfferNetwork(Landroid/net/NetworkScore;)V

    goto :goto_31

    .line 202
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    goto :goto_31

    .line 198
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkScore;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleSetScore(Landroid/net/NetworkScore;)V

    goto :goto_31

    .line 194
    :pswitch_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    goto :goto_31

    .line 190
    :pswitch_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method public final handleOfferNetwork(Landroid/net/NetworkScore;)V
    .registers 5

    .line 183
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    return-void
.end method

.method public final handleSetScore(Landroid/net/NetworkScore;)V
    .registers 3

    .line 263
    iget-object v0, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 264
    :cond_9
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    .line 265
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->reevaluateAllRequests()V

    return-void
.end method

.method public final reevaluateAllRequests()V
    .registers 5

    .line 275
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_5

    return-void

    .line 276
    :cond_5
    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    iget-object v2, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkFactoryImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mRequestCallback:Landroid/net/NetworkProvider$NetworkOfferCallback;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    return-void
.end method

.method public register(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V

    return-void
.end method

.method public final register(Ljava/lang/String;Z)V
    .registers 6

    .line 152
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_3b

    .line 155
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    const-string v1, "Registering NetworkFactory"

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/net/NetworkFactoryImpl$2;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/net/NetworkFactoryImpl$2;-><init>(Landroid/net/NetworkFactoryImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 170
    iget-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 171
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    if-eqz p2, :cond_32

    const/4 p1, 0x6

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a

    :cond_32
    const/4 p1, 0x5

    .line 178
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3a
    return-void

    .line 153
    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A NetworkFactory must only be registered once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerIgnoringScore(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 303
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setScoreFilter(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->setScoreFilter(Landroid/net/NetworkScore;)V

    return-void
.end method

.method public setScoreFilter(Landroid/net/NetworkScore;)V
    .registers 3

    const/4 v0, 0x3

    .line 299
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkProvider;->getProviderId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1b

    :cond_18
    const-string/jumbo v1, "null"

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ScoreFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryImpl;->mScore:Landroid/net/NetworkScore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkFactoryLegacyImpl;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/NetworkFactoryImpl;->mNetworkRequests:Ljava/util/Map;

    .line 320
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
