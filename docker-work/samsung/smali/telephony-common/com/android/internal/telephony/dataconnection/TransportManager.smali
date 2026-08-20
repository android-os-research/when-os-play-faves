.class public Lcom/android/internal/telephony/dataconnection/TransportManager;
.super Landroid/os/Handler;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;
    }
.end annotation


# static fields
.field private static final blacklist FALL_BACK_REEVALUATE_DELAY_MILLIS:J


# instance fields
.field private blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private final blacklist mHandoverNeededEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mIsHandoverEnabled:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPendingHandoverApns:Landroid/util/SparseIntArray;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public static synthetic blacklist $r8$lambda$LZWHj72eRdQFUv9LCRqk7lYws5s(Lcom/android/internal/telephony/dataconnection/TransportManager;IIZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/TransportManager;->lambda$evaluateTransportPreference$0(IIZZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->FALL_BACK_REEVALUATE_DELAY_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 159
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPendingHandoverApns:Landroid/util/SparseIntArray;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mIsHandoverEnabled:I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mLogTag:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V

    .line 171
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerForHandoverEnabledChanged(Landroid/os/Handler;I)V

    return-void
.end method

.method private blacklist evaluateTransportPreference()V
    .registers 7

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isHandoverPending()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "evaluateTransportPreference"

    .line 238
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_62

    aget v3, v0, v2

    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v4

    .line 241
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getCurrentTransport(I)I

    move-result v5

    if-eq v4, v5, :cond_5f

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover started for APN type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {v4}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPendingHandoverApns:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/TransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/TransportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/dataconnection/TransportManager;II)V

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isHandoverEnabled(I)Z

    move-result p0

    invoke-direct {v1, v3, v4, v2, p0}, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;-><init>(IILcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams$HandoverCallback;Z)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_62
    return-void
.end method

.method private blacklist isHandoverPending()Z
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPendingHandoverApns:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic blacklist lambda$evaluateTransportPreference$0(IIZZ)V
    .registers 7

    if-eqz p3, :cond_1b

    .line 252
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handover succeeded for APN type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 252
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    goto :goto_47

    .line 255
    :cond_1b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APN type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " handover to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed, fallback="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 255
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    :goto_47
    const-wide/16 v0, 0x0

    if-eqz p4, :cond_4e

    .line 269
    sget-wide v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->FALL_BACK_REEVALUATE_DELAY_MILLIS:J

    goto :goto_51

    .line 274
    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->setCurrentTransport(II)V

    .line 276
    :goto_51
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPendingHandoverApns:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    const/4 p1, 0x2

    .line 277
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 323
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->log(Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized blacklist setCurrentTransport(II)V
    .registers 4

    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->setCurrentTransport(II)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 225
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_36

    if-eq v0, v2, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->loge(Ljava/lang/String;)V

    goto :goto_3f

    .line 189
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 190
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->setHandoverEnabled(I)V

    goto :goto_3f

    .line 185
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->evaluateTransportPreference()V

    goto :goto_3f

    .line 180
    :cond_36
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 181
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public blacklist isHandoverEnabled(I)Z
    .registers 4

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHandoverEnabled: (mIsHandoverEnabled & apnType)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mIsHandoverEnabled:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mIsHandoverEnabled:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_23

    const-string p1, "isHandoverEnabled: return true"

    .line 203
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_23
    const-string p1, "isHandoverEnabled: return false"

    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerDataThrottler(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    if-eqz p0, :cond_7

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerDataThrottler(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    :cond_7
    return-void
.end method

.method public blacklist registerForHandoverNeededEvent(Landroid/os/Handler;I)V
    .registers 4

    if-eqz p1, :cond_8

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public blacklist setHandoverEnabled(I)V
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHandoverEnabled: mIsHandoverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mIsHandoverEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->logl(Ljava/lang/String;)V

    .line 213
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mIsHandoverEnabled:I

    return-void
.end method

.method public blacklist unregisterForHandoverNeededEvent(Landroid/os/Handler;)V
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
