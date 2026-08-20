.class public Lcom/android/internal/telephony/dataconnection/DataThrottler;
.super Landroid/os/Handler;
.source "DataThrottler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mResetWhenAreaCodeChanged:Z

.field private final blacklist mSlotIndex:I

.field private final blacklist mThrottleStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataThrottler;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataThrottler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mResetWhenAreaCodeChanged:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mThrottleStatus:Ljava/util/Map;

    .line 75
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataThrottler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mSlotIndex:I

    .line 101
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mTransportType:I

    .line 103
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 104
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAirplaneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist createStatus(IJI)Landroid/telephony/data/ThrottleStatus;
    .registers 9

    .line 276
    new-instance v0, Landroid/telephony/data/ThrottleStatus$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$Builder;-><init>()V

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_17

    .line 280
    invoke-virtual {v0}, Landroid/telephony/data/ThrottleStatus$Builder;->setNoThrottle()Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p2

    .line 281
    invoke-static {p4}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->getRetryType(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    goto :goto_34

    :cond_17
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p2, v1

    if-nez v3, :cond_29

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/ThrottleStatus$Builder;->setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 285
    invoke-virtual {p2, p3}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    goto :goto_34

    .line 288
    :cond_29
    invoke-virtual {v0, p2, p3}, Landroid/telephony/data/ThrottleStatus$Builder;->setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p2

    .line 289
    invoke-static {p4}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->getRetryType(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    .line 291
    :goto_34
    iget p2, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mSlotIndex:I

    .line 292
    invoke-virtual {v0, p2}, Landroid/telephony/data/ThrottleStatus$Builder;->setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p2

    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mTransportType:I

    .line 293
    invoke-virtual {p2, p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p0, p1}, Landroid/telephony/data/ThrottleStatus$Builder;->setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->build()Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    .line 155
    :cond_1d
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getRetryType(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    return v0

    :cond_5
    if-ne p0, v0, :cond_9

    const/4 p0, 0x3

    return p0

    .line 307
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStatus: Unknown requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->loge(Ljava/lang/String;)V

    return v0
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 320
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onCarrierConfigChanged()V
    .registers 4

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "unthrottle_data_retry_when_tac_changes_bool"

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mResetWhenAreaCodeChanged:Z

    return-void
.end method

.method private blacklist resetInternal()V
    .registers 6

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mThrottleStatus:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ThrottleStatus;

    .line 265
    invoke-virtual {v2}, Landroid/telephony/data/ThrottleStatus;->getApnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 268
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 269
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTime(IJI)V

    goto :goto_2b

    :cond_42
    return-void
.end method

.method private blacklist sendThrottleStatusChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 313
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;->onThrottleStatusChanged(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 316
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method private blacklist setRetryTimeInternal(IJI)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    const-wide/16 p2, -0x1

    .line 193
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_d
    if-eqz p1, :cond_41

    and-int/lit8 v1, p1, 0x11

    const/16 v2, 0x11

    if-ne v1, v2, :cond_18

    and-int/lit8 p1, p1, -0x12

    goto :goto_1e

    :cond_18
    neg-int v1, p1

    and-int v2, p1, v1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr p1, v1

    .line 209
    :goto_1e
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->createStatus(IJI)Landroid/telephony/data/ThrottleStatus;

    move-result-object v1

    .line 211
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mThrottleStatus:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ThrottleStatus;

    .line 214
    invoke-virtual {v1, v3}, Landroid/telephony/data/ThrottleStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mThrottleStatus:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 223
    :cond_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4a

    .line 224
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->sendThrottleStatusChanged(Ljava/util/List;)V

    :cond_4a
    return-void
.end method


# virtual methods
.method public blacklist getRetryTime(I)J
    .registers 5

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mThrottleStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/ThrottleStatus;

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1d

    .line 243
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus;->getThrottleType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    return-wide v0

    .line 246
    :cond_18
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus;->getThrottleExpiryTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_1d
    return-wide v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 p1, 0x5

    if-eq v0, p1, :cond_12

    goto :goto_43

    .line 136
    :cond_12
    iget-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mResetWhenAreaCodeChanged:Z

    if-eqz p1, :cond_43

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->resetInternal()V

    goto :goto_43

    .line 130
    :cond_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 131
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_43

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->resetInternal()V

    goto :goto_43

    .line 127
    :cond_2c
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->resetInternal()V

    goto :goto_43

    .line 124
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->onCarrierConfigChanged()V

    goto :goto_43

    .line 118
    :cond_34
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 119
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 121
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTimeInternal(IJI)V

    :cond_43
    :goto_43
    return-void
.end method

.method public blacklist registerForThrottleStatusChanges(Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;)V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mThrottleStatus:Ljava/util/Map;

    .line 336
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;->onThrottleStatusChanged(Ljava/util/List;)V

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x3

    .line 256
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist setRetryTime(IJI)V
    .registers 5

    .line 175
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    .line 174
    invoke-virtual {p0, p3, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist unregisterForThrottleStatusChanges(Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataThrottler;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 350
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
