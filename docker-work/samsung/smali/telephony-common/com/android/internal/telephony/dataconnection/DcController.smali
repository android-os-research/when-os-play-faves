.class public Lcom/android/internal/telephony/dataconnection/DcController;
.super Landroid/os/Handler;
.source "DcController.java"


# instance fields
.field private final blacklist mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

.field private final blacklist mDcListActiveByCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDcListAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

.field private final blacklist mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private blacklist mImsQci:I

.field private blacklist mImsQoSChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhysicalLinkStatus:I

.field private blacklist mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mTrafficDescriptorsByCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$6TGJ_dCvq7hWah7kzI8_ELa3AUM(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->lambda$isDefaultDataActive$0(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$AjrjJ0BQdCaytciVkbsFe11LkAE(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->lambda$onDataStateChanged$4(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$GmYHLMV9HglZoTBgCZv0YdTxgQc(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->lambda$onDataStateChanged$2(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$PIO38HD6M4icE6_en8WF0srjeoI(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->lambda$onDataStateChanged$3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$PgEutw5hzY7qOlah80PZ4d_Vq_g(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->lambda$isDefaultDataActive$1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;)V
    .registers 7

    .line 116
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    .line 79
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    .line 81
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    const/4 p5, -0x1

    .line 90
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    .line 93
    new-instance p5, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p5}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 p5, 0x0

    .line 98
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQoSChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTag:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 122
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_3e

    .line 123
    new-instance p1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-direct {p1, p2, p0, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    goto :goto_3f

    :cond_3e
    move-object p1, p5

    .line 124
    :goto_3f
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    const p1, 0x40007

    .line 125
    invoke-virtual {p4, p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->registerForDataCallListChanged(Landroid/os/Handler;I)V

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p2, 0x1

    .line 129
    invoke-interface {p1, p0, p2, p5}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForRRCStateChange(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist getQciFromQosBearerSession(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)I"
        }
    .end annotation

    .line 579
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 582
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/QosBearerSession;

    .line 583
    invoke-virtual {p1}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Landroid/telephony/data/Qos;->getType()I

    move-result v2

    if-ne v2, v1, :cond_c

    check-cast p1, Landroid/telephony/data/EpsQos;

    invoke-virtual {p1}, Landroid/telephony/data/EpsQos;->getQci()I

    move-result p1

    if-ne p1, v1, :cond_c

    move v0, v1

    :cond_2c
    return v0
.end method

.method private static synthetic blacklist lambda$isDefaultDataActive$0(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 2

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result p0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static synthetic blacklist lambda$isDefaultDataActive$1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .registers 2

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda4;-><init>()V

    .line 187
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$onDataStateChanged$2(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 2

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$onDataStateChanged$3(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 393
    check-cast p0, Landroid/net/LinkAddress;

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 394
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 395
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getScope()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 393
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$onDataStateChanged$4(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 2

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ims"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 545
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 549
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeDcc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcController;
    .registers 12

    .line 136
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;)V

    return-object v6
.end method

.method private blacklist notifyImsQos(I)V
    .registers 4

    .line 593
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQci:I

    if-ne v0, p1, :cond_5

    return-void

    .line 595
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsQci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 596
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQci:I

    .line 597
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQoSChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist onDataStateChanged(Ljava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 264
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v1

    .line 265
    :try_start_5
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 266
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_445

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: dcsList="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dcListActiveByCid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/DataCallResponse;

    .line 276
    invoke-virtual {v5}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 280
    :cond_4c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_59
    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 282
    iget v7, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/data/DataCallResponse;

    if-nez v7, :cond_8b

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: add to retry dc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 287
    :cond_8b
    iget v8, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcController;->getTrafficDescriptorsForCid(I)Ljava/util/List;

    move-result-object v8

    .line 288
    invoke-virtual {v7}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v7

    .line 289
    invoke-interface {v8, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    .line 291
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDataStateChanged: add to retry due to TD changed dc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", oldTds="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", newTds="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 294
    iget v8, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v8, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->updateTrafficDescriptorsForCid(ILjava/util/List;)V

    .line 295
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 299
    :cond_c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataStateChanged: dcsToRetry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_e9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_363

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/data/DataCallResponse;

    .line 314
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v14, :cond_10c

    const-string v11, "onDataStateChanged: no associated DC yet, ignore"

    .line 317
    invoke-direct {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    goto :goto_e9

    .line 321
    :cond_10c
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v15

    .line 322
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_121

    const-string v14, "onDataStateChanged: no connected apns, ignore"

    .line 323
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    goto/16 :goto_34d

    .line 328
    :cond_121
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataStateChanged: Found ConnId="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newState="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 331
    invoke-interface {v15}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 333
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v6

    if-ne v6, v12, :cond_15b

    const/4 v9, 0x1

    .line 336
    :cond_15b
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v6

    if-nez v6, :cond_1eb

    .line 337
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_17e

    .line 338
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_176
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v20, v9

    goto/16 :goto_34b

    :cond_17e
    const/4 v13, 0x0

    .line 341
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v6

    .line 342
    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 343
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v12

    .line 342
    invoke-static {v13, v6, v12}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v12

    if-eqz v12, :cond_1b3

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDataStateChanged: X restart radio, failCause="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 348
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    goto :goto_176

    .line 349
    :cond_1b3
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v12

    if-eqz v12, :cond_1d3

    .line 351
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDataStateChanged: inactive, add to cleanup list. failCause="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_176

    .line 357
    :cond_1d3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDataStateChanged: inactive, add to retry list. failCause="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    .line 365
    :cond_1eb
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    .line 367
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updatePcscfAddr(Landroid/telephony/data/DataCallResponse;)V

    .line 370
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v6

    .line 371
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateResponseFields(Landroid/telephony/data/DataCallResponse;)V

    .line 372
    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v12, v13}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_213

    const-string v6, "onDataStateChanged: no change"

    .line 373
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    :goto_20b
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v20, v9

    goto/16 :goto_32f

    .line 375
    :cond_213
    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalInterfaceName(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v12

    if-eqz v12, :cond_312

    .line 377
    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v12

    if-eqz v12, :cond_24c

    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 379
    invoke-static {v12, v13}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v12

    if-eqz v12, :cond_24c

    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 381
    invoke-static {v12, v13}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalHttpProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v12

    if-eqz v12, :cond_24c

    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 383
    invoke-static {v12, v13}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v12

    if-nez v12, :cond_246

    goto :goto_24c

    :cond_246
    const-string v6, "onDataStateChanged: no changes"

    .line 422
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_20b

    .line 387
    :cond_24c
    :goto_24c
    new-instance v12, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;

    .line 389
    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    const/16 v17, 0x0

    if-eqz v13, :cond_25b

    .line 390
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v13

    move-object/from16 v18, v2

    goto :goto_25f

    :cond_25b
    move-object/from16 v18, v2

    move-object/from16 v13, v17

    .line 391
    :goto_25f
    iget-object v2, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    if-eqz v2, :cond_267

    .line 392
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v17

    :cond_267
    move-object/from16 v2, v17

    move-object/from16 v17, v3

    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v12, v13, v2, v3}, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Function;)V

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: oldLp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newLp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " car="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 401
    iget-object v2, v12, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2e2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    move-object/from16 v19, v2

    .line 402
    iget-object v2, v12, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/LinkAddress;

    move-object/from16 v21, v2

    .line 404
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    move/from16 v20, v9

    .line 405
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    .line 403
    invoke-static {v2, v9}, Lcom/android/internal/telephony/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_2d6

    const/4 v3, 0x1

    goto :goto_2dd

    :cond_2d6
    move/from16 v9, v20

    move-object/from16 v2, v21

    goto :goto_2b6

    :cond_2db
    move/from16 v20, v9

    :goto_2dd
    move-object/from16 v2, v19

    move/from16 v9, v20

    goto :goto_2a2

    :cond_2e2
    move/from16 v20, v9

    if-eqz v3, :cond_32f

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: addr change, cleanup apns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " oldLp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newLp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_32f

    :cond_312
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move/from16 v20, v9

    .line 426
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: interface change, cleanup apns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 434
    :cond_32f
    :goto_32f
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 436
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->getQciFromQosBearerSession(Ljava/util/List;)I

    move-result v2

    move v7, v2

    :cond_34b
    :goto_34b
    move/from16 v9, v20

    .line 442
    :goto_34d
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_355

    const/4 v8, 0x1

    .line 445
    :cond_355
    invoke-virtual {v11}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_35d

    move v10, v6

    :cond_35d
    move-object/from16 v3, v17

    move-object/from16 v2, v18

    goto/16 :goto_e9

    :cond_363
    move v3, v12

    const/4 v6, 0x1

    .line 451
    invoke-direct {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->notifyImsQos(I)V

    .line 454
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result v2

    if-ne v2, v6, :cond_3b9

    .line 456
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 457
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLteEndcUsingUserDataForIdleDetection()Z

    move-result v2

    if-eqz v2, :cond_37b

    if-eqz v9, :cond_37f

    goto :goto_37d

    :cond_37b
    if-eqz v8, :cond_37f

    :goto_37d
    move v12, v3

    goto :goto_380

    :cond_37f
    move v12, v6

    .line 463
    :goto_380
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    if-eq v2, v12, :cond_38f

    .line 464
    iput v12, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    .line 465
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_38f
    if-eqz v10, :cond_394

    if-nez v8, :cond_394

    goto :goto_3b9

    .line 483
    :cond_394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAnyDataCallDormant = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    if-eqz v8, :cond_3b9

    .line 488
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 494
    :cond_3b9
    :goto_3b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: dcsToRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " apnsToCleanup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 500
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_3d9

    .line 504
    :cond_3eb
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3ef
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_444

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 512
    iget v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_41c

    .line 513
    iget v4, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v4}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v4

    goto :goto_41d

    :cond_41c
    const/4 v4, 0x0

    .line 515
    :goto_41d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", failCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    const v5, 0x40009

    .line 516
    iget v6, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    goto :goto_3ef

    :cond_444
    return-void

    :catchall_445
    move-exception v0

    .line 266
    :try_start_446
    monitor-exit v1
    :try_end_447
    .catchall {:try_start_446 .. :try_end_447} :catchall_445

    throw v0
.end method


# virtual methods
.method public blacklist addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 5

    .line 156
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    if-gez v0, :cond_18

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addActiveDcByCid dc.mCid < 0 dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 159
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 160
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_31

    .line 162
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getTrafficDescriptors()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->updateTrafficDescriptorsForCid(ILjava/util/List;)V

    return-void

    :catchall_31
    move-exception p0

    .line 161
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method blacklist addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPhone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter p1

    .line 568
    :try_start_19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mDcListAll="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mDcListActiveByCid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_64

    .line 571
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    monitor-enter p3

    .line 572
    :try_start_49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mTrafficDescriptorsByCid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    monitor-exit p3

    return-void

    :catchall_61
    move-exception p0

    monitor-exit p3
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_61

    throw p0

    :catchall_64
    move-exception p0

    .line 570
    :try_start_65
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method blacklist getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method blacklist getTrafficDescriptorsForCid(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const v1, 0x40007

    if-eq v0, v1, :cond_20

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 209
    :cond_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 210
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_31

    .line 211
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->onDataStateChanged(Ljava/util/ArrayList;)V

    goto/16 :goto_eb

    :cond_31
    const-string p1, "EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    .line 213
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 218
    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 219
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_eb

    .line 220
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    const/4 v2, 0x2

    if-eqz v0, :cond_97

    .line 221
    check-cast p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 223
    :try_start_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DccDefaultState hal2_0 - RRC Status: rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->rat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDcListActiveByCid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 226
    iget p1, p1, Lvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;->state:I

    if-eqz p1, :cond_83

    move v1, v2

    .line 228
    :cond_83
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    if-eq p1, v1, :cond_92

    .line 229
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 233
    :cond_92
    monitor-exit v0

    goto :goto_eb

    :catchall_94
    move-exception p0

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_4c .. :try_end_96} :catchall_94

    throw p0

    .line 234
    :cond_97
    instance-of v0, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;

    if-eqz v0, :cond_eb

    .line 235
    check-cast p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 237
    :try_start_a0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DccDefaultState AIDL - RRC Status: rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->rat:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDcListActiveByCid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 240
    iget p1, p1, Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;->state:I

    if-eqz p1, :cond_d7

    move v1, v2

    .line 242
    :cond_d7
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    if-eq p1, v1, :cond_e6

    .line 243
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatus:I

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 247
    :cond_e6
    monitor-exit v0

    goto :goto_eb

    :catchall_e8
    move-exception p0

    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_a0 .. :try_end_ea} :catchall_e8

    throw p0

    :cond_eb
    :goto_eb
    return-void
.end method

.method blacklist isDefaultDataActive()Z
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda3;-><init>()V

    .line 186
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public blacklist registerForImsQoSChanged(Landroid/os/Handler;I)V
    .registers 4

    .line 601
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQoSChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForPhysicalLinkStatusChanged(Landroid/os/Handler;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 532
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method blacklist removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v1, :cond_27

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveDcByCid removedDc=null dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 177
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_3b

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    monitor-enter v1

    .line 179
    :try_start_2b
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v1

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw p0

    :catchall_3b
    move-exception p0

    .line 177
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method blacklist removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_27

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    monitor-enter v1

    .line 151
    :try_start_17
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    iget p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw p0

    :catchall_27
    move-exception p0

    .line 149
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    const-string v2, "mDcListAll="

    .line 556
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDcListActiveByCid="

    .line 557
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_33

    .line 559
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_20
    const-string v1, "mTrafficDescriptorsByCid="

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_30

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_30
    move-exception p0

    .line 561
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0

    :catchall_33
    move-exception p0

    .line 558
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public blacklist unregisterForImsQoSChanged(Landroid/os/Handler;)V
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mImsQoSChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method blacklist unregisterForPhysicalLinkStatusChanged(Landroid/os/Handler;)V
    .registers 2

    .line 541
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhysicalLinkStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method blacklist updateTrafficDescriptorsForCid(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTrafficDescriptorsByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
