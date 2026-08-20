.class public Lcom/android/server/location/contexthub/ContextHubClientManager;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;,
        Lcom/android/server/location/contexthub/ContextHubClientManager$Action;
    }
.end annotation


# static fields
.field public static final ACTION_CANCELLED:I = 0x2

.field public static final ACTION_REGISTERED:I = 0x0

.field public static final ACTION_UNREGISTERED:I = 0x1

.field public static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final DEBUG_LOG_ENABLED:Z = false

.field public static final MAX_CLIENT_ID:I = 0x7fff

.field public static final NUM_CLIENT_RECORDS:I = 0x14

.field public static final TAG:Ljava/lang/String; = "ContextHubClientManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Lcom/android/server/location/contexthub/ContextHubClientBroker;",
            ">;"
        }
    .end annotation
.end field

.field public mNextHostEndPointId:I

.field public final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8LcvPBRsPyG5RBL6I3o2GzDxqeI(JILcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager;->lambda$onNanoAppAborted$3(JILcom/android/server/location/contexthub/ContextHubClientBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$95Z1gwrE7JZTBLv2tvESnEnZU_w(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->lambda$onNanoAppLoaded$0(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E0BbgtkFt0Sxfe0O53xwcWpIj8c(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager;->lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N91_Tx4Qo_ZeXlvlSTSsReOnLQ0(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->lambda$onHubReset$2(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VbjDpOWRQucgwSRJcAwO8qR5pJc(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->lambda$onNanoAppUnloaded$1(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubClientManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubClientManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .registers 5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 92
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 140
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    return-void
.end method

.method public static synthetic lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4

    .line 370
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$onHubReset$2(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 1

    .line 308
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onHubReset()V

    return-void
.end method

.method public static synthetic lambda$onNanoAppAborted$3(JILcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4

    .line 317
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onNanoAppAborted(JI)V

    return-void
.end method

.method public static synthetic lambda$onNanoAppLoaded$0(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 3

    .line 293
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onNanoAppLoaded(J)V

    return-void
.end method

.method public static synthetic lambda$onNanoAppUnloaded$1(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 3

    .line 301
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onNanoAppUnloaded(J)V

    return-void
.end method


# virtual methods
.method public final broadcastMessage(ILandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 402
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    const-wide v2, 0x20b00000001L

    .line 403
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 404
    invoke-virtual {v1, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 405
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_a

    .line 407
    :cond_26
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 408
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    const-wide v0, 0x20b00000002L

    .line 409
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 410
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 411
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2c

    :cond_48
    return-void
.end method

.method public forEachClientOfHub(ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/contexthub/ContextHubClientBroker;",
            ">;)V"
        }
    .end annotation

    .line 328
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 329
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v1

    if-ne v1, p1, :cond_a

    .line 330
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method public final getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;
    .registers 7

    .line 383
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 384
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->hasPendingIntent(Landroid/app/PendingIntent;J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 385
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v1

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHostEndPointId()S
    .registers 7

    .line 343
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_33

    .line 347
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    const/16 v3, 0x7fff

    if-gt v2, v3, :cond_31

    .line 349
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v5, v0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    if-ne v0, v3, :cond_23

    goto :goto_25

    :cond_23
    add-int/lit8 v1, v0, 0x1

    .line 350
    :goto_25
    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    goto :goto_31

    :cond_28
    if-ne v0, v3, :cond_2c

    move v0, v1

    goto :goto_2e

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_31
    :goto_31
    int-to-short p0, v0

    return p0

    .line 344
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not register client - max limit exceeded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHubReset(I)V
    .registers 3

    .line 308
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v0

    const-string v1, "ContextHubClientManager"

    if-eqz v0, :cond_2a

    .line 245
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received broadcast message with permissions from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-static {v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_26
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->broadcastMessage(ILandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    goto :goto_55

    .line 253
    :cond_2a
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    if-eqz p0, :cond_3c

    .line 255
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    goto :goto_55

    .line 258
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot send message to unregistered client (host endpoint ID = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-void
.end method

.method public onNanoAppAborted(IJI)V
    .registers 6

    .line 317
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;-><init>(JI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onNanoAppLoaded(IJ)V
    .registers 5

    .line 293
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onNanoAppUnloaded(IJ)V
    .registers 5

    .line 301
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/location/IContextHubClient;
    .registers 21

    move-object v12, p0

    const-string v0, "Regenerated"

    .line 201
    monitor-enter p0

    .line 202
    :try_start_4
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-virtual {p0, v1, v7, v8, v9}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;

    move-result-object v1

    if-nez v1, :cond_47

    .line 205
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    move-result v0

    .line 206
    new-instance v13, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-object v2, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-object v1, v13

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    .line 210
    iget-object v1, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v1, v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Registered"

    .line 212
    iget-object v1, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 213
    invoke-virtual {v13}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V

    .line 212
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-object v1, v13

    goto :goto_4c

    :cond_47
    move-object/from16 v2, p5

    .line 217
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->setAttributionTag(Ljava/lang/String;)V

    .line 219
    :goto_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_6f

    const-string v2, "ContextHubClientManager"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " client with host endpoint ID "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {v1}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    return-object v0

    :catchall_6f
    move-exception v0

    .line 219
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method public registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 19

    move-object v11, p0

    .line 160
    monitor-enter p0

    .line 161
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    move-result v0

    .line 162
    new-instance v12, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-object v2, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-object v1, v12

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V

    .line 166
    iget-object v1, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v1, v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 168
    invoke-virtual {v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_61

    .line 172
    :try_start_33
    invoke-virtual {v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->attachDeathRecipient()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_55

    const-string v0, "ContextHubClientManager"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered client with host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v12}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    return-object v0

    :catch_55
    const-string v0, "ContextHubClientManager"

    const-string v1, "Failed to attach death recipient to client"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_61
    move-exception v0

    .line 169
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 422
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nRegistration history:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 424
    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_61
    return-object v0
.end method

.method public unregisterClient(S)V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    if-eqz v0, :cond_25

    .line 276
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isPendingIntentCancelled()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    goto :goto_17

    :cond_16
    const/4 v1, 0x1

    .line 277
    :goto_17
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_25
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ContextHubClientManager"

    if-eqz p0, :cond_48

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistered client with host endpoint ID "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 283
    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot unregister non-existing client with host endpoint ID "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method
