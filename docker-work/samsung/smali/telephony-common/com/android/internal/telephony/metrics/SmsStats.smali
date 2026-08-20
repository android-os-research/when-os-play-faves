.class public Lcom/android/internal/telephony/metrics/SmsStats;
.super Ljava/lang/Object;
.source "SmsStats.java"


# static fields
.field private static final blacklist RANDOM:Ljava/util/Random;


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist getCarrierId()I
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 352
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 355
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0
.end method

.method private blacklist getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 5

    .line 200
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsFormat(Z)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    .line 202
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(IZ)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 203
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    const/4 p1, 0x0

    .line 204
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    const/4 p2, 0x1

    .line 205
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 206
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 207
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 208
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIsRoaming()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 210
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getCarrierId()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    .line 216
    sget-object p0, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    return-object v0
.end method

.method private static blacklist getIncomingSmsError(I)I
    .registers 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v2, 0x4

    if-eq p0, v2, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getIncomingSmsError(Z)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getIsRoaming()Z
    .registers 1

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 347
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private blacklist getOutgoingDefaultProto(ZZJZJ)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 11

    .line 223
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    .line 224
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsFormat(Z)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    .line 225
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(ZZ)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    .line 226
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(Z)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    const/4 p1, 0x1

    .line 227
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1f

    move p2, p1

    goto :goto_20

    :cond_1f
    const/4 p2, -0x1

    .line 228
    :goto_20
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIsRoaming()Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 230
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    .line 231
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    .line 233
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    .line 234
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getCarrierId()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    const-wide/16 v1, 0x0

    cmp-long p0, p3, v1

    if-eqz p0, :cond_4d

    goto :goto_53

    .line 236
    :cond_4d
    sget-object p0, Lcom/android/internal/telephony/metrics/SmsStats;->RANDOM:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    :goto_53
    iput-wide p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    .line 239
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    .line 240
    iput-wide p6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    return-object v0
.end method

.method private blacklist getPhoneId()I
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 309
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 310
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 312
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0
.end method

.method private blacklist getRat(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    move v0, v1

    .line 329
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->getRat(Z)I

    move-result p0

    return p0
.end method

.method private blacklist getRat(Z)I
    .registers 3

    if-eqz p1, :cond_e

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    const/16 p0, 0x12

    return p0

    .line 340
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/SmsStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 342
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 321
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method private static blacklist getSmsFormat(Z)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getSmsTech(IZ)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    move v0, v1

    .line 256
    :cond_9
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsTech(ZZ)I

    move-result p0

    return p0
.end method

.method private blacklist getSmsTech(ZZ)I
    .registers 3

    if-eqz p1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-eqz p2, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist onDroppedIncomingMultipartSms(ZII)V
    .registers 5

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 92
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 93
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    const/4 v0, 0x1

    .line 94
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 95
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 96
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 97
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsError(ZII)V
    .registers 4

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 139
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 140
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsPP(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 v0, 0x1

    .line 118
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 119
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(Z)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsSuccess(ZIIZJ)V
    .registers 7

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    .line 128
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 129
    iput p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 130
    iput-boolean p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 131
    iput-wide p5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsTypeZero(I)V
    .registers 3

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 v0, 0x3

    .line 111
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsVoicemail(ZI)V
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 p2, 0x2

    .line 104
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onIncomingSmsWapPush(IIIJ)V
    .registers 7

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingDefaultProto(ZI)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p1

    const/4 v0, 0x4

    .line 147
    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 148
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 149
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 150
    invoke-static {p3}, Lcom/android/internal/telephony/metrics/SmsStats;->getIncomingSmsError(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 151
    iput-wide p4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 152
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZZZIIJZJ)V
    .registers 21

    move v0, p4

    move v1, p5

    move-object v2, p0

    move v3, p2

    move v4, p1

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 168
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/SmsStats;->getOutgoingDefaultProto(ZZJZJ)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x65

    if-eqz p1, :cond_28

    .line 173
    iput v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz p3, :cond_1e

    const/4 v0, 0x4

    .line 175
    iput v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    :cond_1c
    :goto_1c
    move-object v0, p0

    goto :goto_44

    :cond_1e
    if-ne v0, v5, :cond_23

    .line 177
    iput v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_1c

    :cond_23
    if-eqz v0, :cond_1c

    .line 179
    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_1c

    :cond_28
    if-ne v0, v5, :cond_2d

    .line 184
    iput v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto :goto_31

    :cond_2d
    if-eqz v0, :cond_31

    .line 186
    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    .line 188
    :cond_31
    :goto_31
    iput v1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_1c

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1c

    if-eqz p2, :cond_3f

    const/16 v0, 0x42

    goto :goto_41

    :cond_3f
    const/16 v0, 0x14b

    .line 191
    :goto_41
    iput v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    goto :goto_1c

    .line 194
    :goto_44
    iget-object v0, v0, Lcom/android/internal/telephony/metrics/SmsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addOutgoingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZZZIJZJ)V
    .registers 21

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    .line 159
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJ)V

    return-void
.end method
