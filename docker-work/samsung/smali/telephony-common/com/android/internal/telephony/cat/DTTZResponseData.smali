.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private blacklist mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Calendar;)V
    .registers 2

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private blacklist byteToBCD(I)B
    .registers 4

    if-ltz p1, :cond_10

    const/16 v0, 0x63

    if-le p1, v0, :cond_7

    goto :goto_10

    .line 324
    :cond_7
    div-int/lit8 p0, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0

    .line 319
    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Value has to be between 0 and 99"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getTZOffSetByte(J)B
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-wide/32 v2, 0xdbba0

    .line 336
    div-long/2addr p1, v2

    if-eqz v0, :cond_11

    const/4 v1, -0x1

    :cond_11
    int-to-long v1, v1

    mul-long/2addr v1, p1

    long-to-int p1, v1

    .line 338
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result p0

    if-eqz v0, :cond_1d

    or-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    :cond_1d
    return p0
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 272
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 273
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    .line 279
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    if-nez v4, :cond_20

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 283
    :cond_20
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v5

    .line 286
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    const/4 v4, 0x3

    .line 289
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    const/4 v4, 0x4

    .line 292
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    .line 295
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    const/4 v4, 0x6

    .line 298
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    const-string v4, "persist.sys.timezone"

    const-string v5, ""

    .line 300
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_89

    const/4 p0, -0x1

    aput-byte p0, v1, v3

    goto :goto_9e

    .line 304
    :cond_89
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 305
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    .line 306
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    move-result p0

    aput-byte p0, v1, v3

    :goto_9e
    if-ge v2, v0, :cond_a8

    .line 309
    aget-byte p0, v1, v2

    .line 310
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_a8
    return-void
.end method
