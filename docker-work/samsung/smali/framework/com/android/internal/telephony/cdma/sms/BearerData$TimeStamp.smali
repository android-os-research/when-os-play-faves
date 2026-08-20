.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# instance fields
.field public blacklist hour:I

.field private blacklist mZoneId:Ljava/time/ZoneId;

.field public blacklist minute:I

.field public blacklist monthDay:I

.field public blacklist monthOrdinal:I

.field public blacklist second:I

.field public blacklist year:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    .line 273
    return-void
.end method

.method public static blacklist fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .registers 10
    .param p0, "data"    # [B

    .line 276
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 278
    .local v0, "ts":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    .line 279
    .local v1, "year":I
    const/4 v2, 0x0

    const/16 v3, 0x63

    if-gt v1, v3, :cond_73

    if-gez v1, :cond_14

    goto :goto_73

    .line 280
    :cond_14
    const/16 v3, 0x60

    if-lt v1, v3, :cond_1b

    add-int/lit16 v3, v1, 0x76c

    goto :goto_1d

    :cond_1b
    add-int/lit16 v3, v1, 0x7d0

    :goto_1d
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 281
    const/4 v3, 0x1

    aget-byte v4, p0, v3

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v4

    .line 282
    .local v4, "month":I
    if-lt v4, v3, :cond_72

    const/16 v5, 0xc

    if-le v4, v5, :cond_2d

    goto :goto_72

    .line 283
    :cond_2d
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    .line 284
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v5

    .line 285
    .local v5, "day":I
    if-lt v5, v3, :cond_71

    const/16 v3, 0x1f

    if-le v5, v3, :cond_3d

    goto :goto_71

    .line 286
    :cond_3d
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    .line 287
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    .line 288
    .local v3, "hour":I
    if-ltz v3, :cond_70

    const/16 v6, 0x17

    if-le v3, v6, :cond_4d

    goto :goto_70

    .line 289
    :cond_4d
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    .line 290
    const/4 v6, 0x4

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    .line 291
    .local v6, "minute":I
    if-ltz v6, :cond_6f

    const/16 v7, 0x3b

    if-le v6, v7, :cond_5d

    goto :goto_6f

    .line 292
    :cond_5d
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    .line 293
    const/4 v8, 0x5

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v8

    .line 294
    .local v8, "second":I
    if-ltz v8, :cond_6e

    if-le v8, v7, :cond_6b

    goto :goto_6e

    .line 295
    :cond_6b
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 296
    return-object v0

    .line 294
    :cond_6e
    :goto_6e
    return-object v2

    .line 291
    .end local v8    # "second":I
    :cond_6f
    :goto_6f
    return-object v2

    .line 288
    .end local v6    # "minute":I
    :cond_70
    :goto_70
    return-object v2

    .line 285
    .end local v3    # "hour":I
    :cond_71
    :goto_71
    return-object v2

    .line 282
    .end local v5    # "day":I
    :cond_72
    :goto_72
    return-object v2

    .line 279
    .end local v4    # "month":I
    :cond_73
    :goto_73
    return-object v2
.end method

.method public static blacklist fromMillis(J)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .registers 6
    .param p0, "timeInMillis"    # J

    .line 300
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 301
    .local v0, "ts":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    nop

    .line 302
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 303
    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    .line 304
    .local v2, "year":I
    const/16 v3, 0x7cc

    if-lt v2, v3, :cond_42

    const/16 v3, 0x82f

    if-le v2, v3, :cond_21

    goto :goto_42

    .line 305
    :cond_21
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 306
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    .line 307
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    .line 308
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    .line 309
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    .line 310
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 311
    return-object v0

    .line 304
    :cond_42
    :goto_42
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public blacklist toByteArray()[B
    .registers 5

    .line 315
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    .line 316
    .local v0, "year":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 317
    .local v1, "outStream":Ljava/io/ByteArrayOutputStream;
    div-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v0, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 318
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    div-int/lit8 v3, v2, 0xa

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 319
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    div-int/lit8 v3, v2, 0xa

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    div-int/lit8 v3, v2, 0xa

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    div-int/lit8 v3, v2, 0xa

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    div-int/lit8 v3, v2, 0xa

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist toMillis()J
    .registers 7

    .line 328
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 329
    invoke-static/range {v0 .. v5}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 330
    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    .line 331
    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v1

    .line 332
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2
    :try_end_22
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_22} :catch_23

    return-wide v2

    .line 333
    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v1    # "instant":Ljava/time/Instant;
    :catch_23
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/time/DateTimeException;
    const-string v1, "BearerData"

    const-string v2, "Invalid timestamp"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v0    # "ex":Ljava/time/DateTimeException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "TimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", second="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
