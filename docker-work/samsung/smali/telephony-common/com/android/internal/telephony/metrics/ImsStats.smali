.class public Lcom/android/internal/telephony/metrics/ImsStats;
.super Ljava/lang/Object;
.source "ImsStats.java"


# static fields
.field private static final blacklist PATTERN_HOSTNAME:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_IMEI:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_IPV4:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_IPV6:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_UNKNOWN_ID:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_UNSEGMENTED_IMEI_IMSI:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_URI:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN_UUID:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "ImsStats"


# instance fields
.field private blacklist mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private blacklist mLastRegistrationState:I

.field private blacklist mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

.field private blacklist mLastTimestamp:J

.field private final blacklist mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final blacklist mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private final blacklist mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-string v0, "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UUID:Ljava/util/regex/Pattern;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "([a-zA-Z]{2,}:)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 90
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_URI:Ljava/util/regex/Pattern;

    const-string v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    .line 102
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV4:Ljava/util/regex/Pattern;

    const-string v0, "([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,6}(:[0-9a-fA-F]{1,4}){1,6}|([0-9a-fA-F]{1,4}:){1,7}:|:(:[0-9a-fA-F]{1,4}){1,7}"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV6:Ljava/util/regex/Pattern;

    const-string v0, "(^|[^0-9])(?:[0-9]{8}-[0-9]{6}-[0-9][0-9]?|[0-9]{2}-[0-9]{6}-[0-9]{6}-[0-9][0-9]?|[0-9]{16})($|[^0-9])"

    .line 137
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IMEI:Ljava/util/regex/Pattern;

    const-string v0, "(^|[^0-9])[0-9]{15}($|[^0-9])"

    .line 155
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNSEGMENTED_IMEI_IMSI:Ljava/util/regex/Pattern;

    const-string v0, "([0-9a-zA-Z][0-9a-zA-Z_\\-]{0,61}[0-9a-zA-Z]\\.){2,}[a-zA-Z]{2,}"

    .line 169
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_HOSTNAME:Ljava/util/regex/Pattern;

    const-string v0, "(^|[^0-9a-fA-F])(([-\\.]?0)*[1-9a-fA-F]([-\\.]?[0-9a-fA-F]){5,}|0*[1-9a-fA-F]([0-9a-fA-F]){4,})"

    .line 185
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNKNOWN_ID:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    .line 201
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 205
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 206
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    return-void
.end method

.method private blacklist convertRegistrationTechToNetworkType(I)I
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_27

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1e

    new-array v0, v0, [Ljava/lang/Object;

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "convertRegistrationTechToNetworkType: unknown radio tech %d"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/metrics/ImsStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getWwanPsRat()I

    move-result p0

    return p0

    :cond_1e
    const/16 p0, 0x14

    return p0

    :cond_21
    const/16 p0, 0x12

    return p0

    :cond_24
    const/16 p0, 0xd

    return p0

    :cond_27
    return v1
.end method

.method private blacklist convertTransportTypeToNetworkType(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/16 p0, 0x12

    return p0

    .line 373
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getWwanPsRat()I

    move-result p0

    return p0
.end method

.method private static blacklist copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 4

    .line 424
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    .line 426
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    .line 427
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    .line 428
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    .line 429
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 430
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 431
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 432
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 433
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 434
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 435
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 436
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 437
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    return-object v0
.end method

.method public static blacklist filterExtraMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 453
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UUID:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<UUID_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 454
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_URI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 455
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_HOSTNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<HOSTNAME_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 456
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV4:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<IPV4_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 457
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IPV6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "<IPV6_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 458
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_IMEI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<IMEI_REDACTED>$2"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 459
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNSEGMENTED_IMEI_IMSI:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<IMEI_IMSI_REDACTED>$2"

    .line 460
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 461
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->PATTERN_UNKNOWN_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1<ID_REDACTED>"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_72

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_72
    return-object p0
.end method

.method private blacklist getDefaultImsRegistrationStats()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 3

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 388
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    return-object v0
.end method

.method private blacklist getLastCapableFeaturesForTech(I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    .line 402
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0

    .line 400
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getRatAtEnd(I)I
    .registers 3

    const/16 v0, 0x12

    if-ne p1, v0, :cond_5

    goto :goto_9

    .line 366
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getWwanPsRat()I

    move-result p1

    :goto_9
    return p1
.end method

.method private blacklist getWwanPsRat()I
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getDataRat(Landroid/telephony/ServiceState;)I

    move-result p0

    return p0
.end method

.method private varargs blacklist loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 473
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs blacklist logw(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 469
    sget-object v0, Lcom/android/internal/telephony/metrics/ImsStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist conclude()V
    .registers 15

    monitor-enter p0

    .line 220
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getTimeMillis()J

    move-result-wide v0

    .line 223
    iget v2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a1

    .line 224
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ImsStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v2

    .line 225
    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTimestamp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    const/4 v7, 0x1

    if-gez v6, :cond_2b

    const-string v2, "conclude: discarding transient stats, duration=%d"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 228
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/ImsStats;->logw(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a1

    .line 230
    :cond_2b
    iput-wide v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 233
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v6, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_39

    move-wide v10, v4

    goto :goto_3a

    :cond_39
    move-wide v10, v8

    :goto_3a
    iput-wide v10, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 235
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v6, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_46

    move-wide v10, v4

    goto :goto_47

    :cond_46
    move-wide v10, v8

    :goto_47
    iput-wide v10, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 237
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_54

    move-wide v11, v4

    goto :goto_55

    :cond_54
    move-wide v11, v8

    :goto_55
    iput-wide v11, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 239
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_63

    move-wide v12, v4

    goto :goto_64

    :cond_63
    move-wide v12, v8

    :goto_64
    iput-wide v12, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 242
    iget v6, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const/16 v12, 0x12

    if-ne v6, v12, :cond_6f

    .line 243
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWlanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    goto :goto_71

    .line 244
    :cond_6f
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastWwanCapableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 246
    :goto_71
    invoke-virtual {v6, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v7

    if-eqz v7, :cond_79

    move-wide v12, v4

    goto :goto_7a

    :cond_79
    move-wide v12, v8

    :goto_7a
    iput-wide v12, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 248
    invoke-virtual {v6, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_84

    move-wide v12, v4

    goto :goto_85

    :cond_84
    move-wide v12, v8

    :goto_85
    iput-wide v12, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 250
    invoke-virtual {v6, v10}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_8f

    move-wide v12, v4

    goto :goto_90

    :cond_8f
    move-wide v12, v8

    :goto_90
    iput-wide v12, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 252
    invoke-virtual {v6, v11}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eqz v3, :cond_99

    goto :goto_9a

    :cond_99
    move-wide v4, v8

    :goto_9a
    iput-wide v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V

    .line 258
    :cond_a1
    :goto_a1
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastTimestamp:J
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a5

    .line 259
    monitor-exit p0

    return-void

    :catchall_a5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getImsVoiceRadioTech()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 357
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_15

    .line 361
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x0

    .line 359
    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected blacklist getTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist onImsCapabilitiesChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 7

    monitor-enter p0

    .line 264
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->convertRegistrationTechToNetworkType(I)I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-eq v3, p1, :cond_16

    .line 269
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    move p1, v2

    goto :goto_17

    :cond_16
    move p1, v1

    .line 273
    :goto_17
    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 275
    invoke-virtual {v3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v3

    if-eq v3, v0, :cond_24

    move v1, v2

    .line 276
    :cond_24
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz p1, :cond_2a

    if-nez v0, :cond_2c

    :cond_2a
    if-eqz v1, :cond_3d

    .line 281
    :cond_2c
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onImsVoiceRegistrationChanged()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 284
    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsRegistered(I)V
    .registers 3

    monitor-enter p0

    .line 311
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-nez v0, :cond_e

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getDefaultImsRegistrationStats()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 317
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->convertTransportTypeToNetworkType(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const/4 p1, 0x2

    .line 318
    iput p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 319
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsRegistering(I)V
    .registers 3

    monitor-enter p0

    .line 302
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->getDefaultImsRegistrationStats()Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/ImsStats;->convertTransportTypeToNetworkType(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    const/4 p1, 0x1

    .line 306
    iput p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 307
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    monitor-enter p0

    .line 323
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    .line 327
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;-><init>()V

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 329
    iget v3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    .line 330
    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/ImsStats;->getRatAtEnd(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    goto :goto_29

    .line 332
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    .line 334
    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    .line 336
    :goto_29
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    .line 337
    iget v1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_37

    move v1, v4

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    .line 338
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    .line 339
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    .line 340
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ImsStats;->filterExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 341
    iput v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    .line 342
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationTermination(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    .line 345
    iput v2, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationState:I

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastRegistrationStats:Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 347
    new-instance p1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/ImsStats;->mLastAvailableFeatures:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_65

    .line 348
    monitor-exit p0

    return-void

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onSetFeatureResponse(III)V
    .registers 5

    monitor-enter p0

    .line 289
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/ImsStats;->getLastCapableFeaturesForTech(I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_11

    .line 293
    invoke-virtual {p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_14

    .line 295
    :cond_11
    invoke-virtual {p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 298
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
