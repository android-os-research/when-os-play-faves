.class public Lcom/samsung/android/infoextraction/regex/SemEntityParser;
.super Ljava/lang/Object;
.source "SemEntityParser.java"


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DELIMITER:Ljava/lang/String; = "\uff03"

.field public static final whitelist PARSE_LEVEL_NORMAL:I = 0x1

.field public static final whitelist PARSE_LEVEL_WEAK:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemEntityParser"

.field private static blacklist dayOfToday:I

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

.field private static blacklist mLevel:I

.field private static blacklist mWorkStr:Ljava/lang/String;

.field private static blacklist mWorkStrForMillis:Ljava/lang/String;

.field private static blacklist monthOfToday:I

.field private static blacklist today:Ljava/util/Calendar;

.field private static blacklist yearOfToday:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist arrangeRemainData()V
    .registers 3

    .line 276
    const-string v0, "(\uff03|[[:space:]])+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 277
    .local v0, "p":Ljava/util/regex/Pattern;
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private static blacklist clear()V
    .registers 1

    .line 460
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    if-eqz v0, :cond_a

    .line 461
    invoke-virtual {v0}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->clear()V

    .line 462
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    .line 464
    :cond_a
    return-void
.end method

.method private static blacklist convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "patternType"    # I

    .line 332
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "t":Landroid/text/format/Time;
    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x2

    const-string v4, "SemEntityParser"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_56

    .line 344
    :try_start_11
    const-string v7, "[[[:space:]]\\-\\/\\.\ub144\uc6d4\uc77c]+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "separated":[Ljava/lang/String;
    array-length v8, v7

    if-ne v8, v1, :cond_34

    .line 346
    aget-object v1, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 347
    aget-object v1, v7, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 348
    aget-object v1, v7, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_4c

    .line 349
    :cond_34
    array-length v1, v7

    if-ne v1, v3, :cond_4d

    .line 350
    sget v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 351
    aget-object v1, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 352
    aget-object v1, v7, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 358
    .end local v7    # "separated":[Ljava/lang/String;
    :goto_4c
    goto :goto_ac

    .line 354
    .restart local v7    # "separated":[Ljava/lang/String;
    :cond_4d
    const-string v1, "fail convertDateToMillis() by invalid length. (type:1)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-object v2

    .line 387
    .end local v7    # "separated":[Ljava/lang/String;
    :catch_53
    move-exception v1

    goto/16 :goto_121

    .line 358
    :cond_56
    if-ne p1, v3, :cond_11b

    .line 359
    const-string v7, "[[[:space:]]\\,\\.]+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 360
    .restart local v7    # "separated":[Ljava/lang/String;
    array-length v8, v7

    if-ne v8, v1, :cond_87

    .line 361
    aget-object v1, v7, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 362
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    aget-object v3, v7, v5

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 363
    aget-object v1, v7, v6

    invoke-static {v1}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_ab

    .line 364
    :cond_87
    array-length v1, v7

    if-ne v1, v3, :cond_115

    .line 365
    sget v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 366
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    aget-object v3, v7, v5

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 367
    aget-object v1, v7, v6

    invoke-static {v1}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 372
    .end local v7    # "separated":[Ljava/lang/String;
    :goto_ab
    nop

    .line 377
    :goto_ac
    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 378
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 379
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 381
    const-string v1, "convertDateToMillis() completed successfully"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "year:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/text/format/Time;->year:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", month:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/text/format/Time;->month:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", day:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", hour:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", minute:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", second:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/text/format/Time;->second:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 385
    .local v5, "result":J
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 369
    .end local v5    # "result":J
    .restart local v7    # "separated":[Ljava/lang/String;
    :cond_115
    const-string v1, "fail convertDateToMillis() by invalid length. (type:2)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v2

    .line 373
    .end local v7    # "separated":[Ljava/lang/String;
    :cond_11b
    const-string v1, "fail convertDateToMillis() by invalid patternType : "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_120} :catch_53

    .line 374
    return-object v2

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    :goto_121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail convertDateToMillis() by exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v2
.end method

.method private static blacklist convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "dayStr"    # Ljava/lang/String;

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_46

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "st"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "nd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "rd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "th"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 398
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 401
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 403
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_46
    return-object p0
.end method

.method private static blacklist convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "timeStr"    # Ljava/lang/String;

    .line 408
    const-string v0, ""

    const-string v1, "SemEntityParser"

    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "t":Landroid/text/format/Time;
    :try_start_b
    const-string v3, "((Time|time|\uc2dc\uac04)[[[:space:]]\\:\\;\\-]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 412
    .local v3, "prefixPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 413
    .local v4, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object p0, v5

    .line 415
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 416
    .local v5, "separated":[Ljava/lang/String;
    const-string/jumbo v6, "\uc624\uc804"

    .line 417
    .local v6, "amOfEachCountry":Ljava/lang/String;
    const-string/jumbo v7, "\uc624\ud6c4"

    .line 419
    .local v7, "pmOfEachCountry":Ljava/lang/String;
    const-string v8, "[0-9]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 420
    .local v8, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 422
    .local v9, "m":Ljava/util/regex/Matcher;
    const/4 v10, 0x0

    .line 423
    .local v10, "i":I
    :goto_32
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_42

    .line 424
    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 425
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    .line 428
    :cond_42
    sget v11, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    iput v11, v2, Landroid/text/format/Time;->year:I

    .line 429
    sget v11, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->monthOfToday:I

    iput v11, v2, Landroid/text/format/Time;->month:I

    .line 430
    sget v11, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->dayOfToday:I

    iput v11, v2, Landroid/text/format/Time;->monthDay:I

    .line 432
    aget-object v11, v5, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v2, Landroid/text/format/Time;->hour:I

    .line 434
    const-string v11, "pm"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const/16 v13, 0xc

    if-nez v11, :cond_96

    const-string v11, "PM"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_96

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6f

    goto :goto_96

    .line 437
    :cond_6f
    const-string v11, "am"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8f

    const-string v11, "AM"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8f

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_86

    goto :goto_8f

    .line 441
    :cond_86
    aget-object v11, v5, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v2, Landroid/text/format/Time;->hour:I

    goto :goto_9f

    .line 438
    :cond_8f
    :goto_8f
    iget v11, v2, Landroid/text/format/Time;->hour:I

    if-ne v11, v13, :cond_9f

    iput v12, v2, Landroid/text/format/Time;->hour:I

    goto :goto_9f

    .line 435
    :cond_96
    :goto_96
    iget v11, v2, Landroid/text/format/Time;->hour:I

    if-eq v11, v13, :cond_9f

    iget v11, v2, Landroid/text/format/Time;->hour:I

    add-int/2addr v11, v13

    iput v11, v2, Landroid/text/format/Time;->hour:I

    .line 444
    :cond_9f
    :goto_9f
    const/4 v11, 0x1

    aget-object v13, v5, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v2, Landroid/text/format/Time;->minute:I

    .line 445
    iput v12, v2, Landroid/text/format/Time;->second:I

    .line 447
    const-string v12, "convertTimeToMillis() completed successfully"

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "year:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", month:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", day:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hour:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", minute:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", second:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v2, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 451
    .local v11, "result":J
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10c} :catch_10d

    return-object v0

    .line 453
    .end local v3    # "prefixPattern":Ljava/util/regex/Pattern;
    .end local v4    # "prefixMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "separated":[Ljava/lang/String;
    .end local v6    # "amOfEachCountry":Ljava/lang/String;
    .end local v7    # "pmOfEachCountry":Ljava/lang/String;
    .end local v8    # "p":Ljava/util/regex/Pattern;
    .end local v9    # "m":Ljava/util/regex/Matcher;
    .end local v10    # "i":I
    .end local v11    # "result":J
    :catch_10d
    move-exception v3

    .line 454
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail convertTimeToMillis() by exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-object v0
.end method

.method public static whitelist parse(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 63
    sput-object p0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->clear()V

    .line 66
    new-instance v0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    .line 68
    sput p2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->yearOfToday:I

    .line 74
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->monthOfToday:I

    .line 75
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->dayOfToday:I

    .line 77
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingEmailInfo()V

    .line 78
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingDateInfo()V

    .line 79
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingTimeInfo()V

    .line 80
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingPhoneNumInfo()V

    .line 81
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingURLInfo()V

    .line 82
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingDateMillisInfo()V

    .line 83
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->parsingTimeMillisInfo()V

    .line 84
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->arrangeRemainData()V

    .line 86
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    return-object v0
.end method

.method private static blacklist parsingDateInfo()V
    .registers 14

    .line 148
    const-string v0, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 149
    .local v0, "p1":Ljava/util/regex/Pattern;
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 150
    .local v1, "m1":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 152
    :goto_1b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v4, "SemEntityParser"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_49

    .line 153
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "matchString":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v6, v2, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add date(pattern type1): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2    # "matchString":Ljava/lang/String;
    goto :goto_1b

    .line 160
    :cond_49
    const-string v2, "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 161
    .local v2, "p2":Ljava/util/regex/Pattern;
    sget-object v7, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 162
    .local v7, "m2":Ljava/util/regex/Matcher;
    sget-object v8, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 164
    :goto_61
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 165
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "matchString":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v9, v8, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add date(pattern type2): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v8    # "matchString":Ljava/lang/String;
    goto :goto_61

    .line 172
    :cond_8b
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_eb

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_eb

    .line 174
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "countryDateString":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 178
    .local v10, "p3":Ljava/util/regex/Pattern;
    sget-object v11, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 179
    .local v11, "m3":Ljava/util/regex/Matcher;
    sget-object v12, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 181
    :goto_c1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 182
    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "matchString":Ljava/lang/String;
    sget-object v12, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v12, v3, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 185
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add date(pattern type3, country): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v3    # "matchString":Ljava/lang/String;
    goto :goto_c1

    .line 188
    .end local v9    # "countryDateString":Ljava/lang/String;
    .end local v10    # "p3":Ljava/util/regex/Pattern;
    .end local v11    # "m3":Ljava/util/regex/Matcher;
    :cond_eb
    return-void
.end method

.method private static blacklist parsingDateMillisInfo()V
    .registers 15

    .line 91
    const-string v0, "((((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]])))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 93
    .local v0, "p1":Ljava/util/regex/Pattern;
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 94
    .local v1, "m1":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 96
    :goto_1b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "SemEntityParser"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_4e

    .line 97
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "matchString":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v2, v4}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v6}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add date for millis(type1): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v2    # "matchString":Ljava/lang/String;
    goto :goto_1b

    .line 103
    :cond_4e
    const-string v2, "((((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 105
    .local v2, "p2":Ljava/util/regex/Pattern;
    sget-object v8, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 106
    .local v8, "m2":Ljava/util/regex/Matcher;
    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 108
    :goto_66
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 109
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "matchString":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v9, v6}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v9    # "matchString":Ljava/lang/String;
    goto :goto_66

    .line 115
    :cond_94
    sget-object v9, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "countryDateString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_111

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_111

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 122
    .local v11, "p3":Ljava/util/regex/Pattern;
    sget-object v12, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 123
    .local v12, "m3":Ljava/util/regex/Matcher;
    sget-object v13, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 125
    :goto_e3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 126
    invoke-virtual {v12, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "matchString":Ljava/lang/String;
    sget-object v13, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v3, v4}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 128
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add date for millis(type3, country): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v3    # "matchString":Ljava/lang/String;
    goto :goto_e3

    .line 131
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "p3":Ljava/util/regex/Pattern;
    .end local v12    # "m3":Ljava/util/regex/Matcher;
    :cond_111
    return-void
.end method

.method private static blacklist parsingEmailInfo()V
    .registers 6

    .line 236
    sget v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    .line 237
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .local v0, "p":Ljava/util/regex/Pattern;
    goto :goto_a

    .line 239
    .end local v0    # "p":Ljava/util/regex/Pattern;
    :cond_8
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    .line 242
    .restart local v0    # "p":Ljava/util/regex/Pattern;
    :goto_a
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 244
    .local v1, "m":Ljava/util/regex/Matcher;
    sget v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    if-ltz v2, :cond_23

    .line 245
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 248
    :cond_23
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 250
    .local v2, "hyphen":Ljava/util/regex/Pattern;
    :goto_25
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 251
    const-string v3, ""

    .line 252
    .local v3, "matchString":Ljava/lang/String;
    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    const/4 v5, 0x0

    if-ltz v4, :cond_3b

    .line 253
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 255
    :cond_3b
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    :goto_43
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v5, 0x6

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add email address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemEntityParser"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v3    # "matchString":Ljava/lang/String;
    goto :goto_25

    .line 261
    :cond_6c
    return-void
.end method

.method private static blacklist parsingPhoneNumInfo()V
    .registers 6

    .line 205
    sget v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    .line 206
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    .local v0, "p":Ljava/util/regex/Pattern;
    goto :goto_a

    .line 208
    .end local v0    # "p":Ljava/util/regex/Pattern;
    :cond_8
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    .line 211
    .restart local v0    # "p":Ljava/util/regex/Pattern;
    :goto_a
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 212
    .local v1, "m":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 214
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 216
    .local v2, "hyphen":Ljava/util/regex/Pattern;
    :goto_21
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 217
    const-string v3, ""

    .line 218
    .local v3, "matchString":Ljava/lang/String;
    sget v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mLevel:I

    const/4 v5, 0x0

    if-ltz v4, :cond_37

    .line 219
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    .line 221
    :cond_37
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    :goto_3f
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_6e

    .line 226
    sget-object v4, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add tel number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemEntityParser"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v3    # "matchString":Ljava/lang/String;
    :cond_6e
    goto :goto_21

    .line 231
    :cond_6f
    invoke-static {}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->refactoringPhoneNumber()V

    .line 232
    return-void
.end method

.method private static blacklist parsingTimeInfo()V
    .registers 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 192
    .local v0, "p":Ljava/util/regex/Pattern;
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 193
    .local v1, "m":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 195
    :goto_32
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "matchString":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemEntityParser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v2    # "matchString":Ljava/lang/String;
    goto :goto_32

    .line 201
    :cond_60
    return-void
.end method

.method private static blacklist parsingTimeMillisInfo()V
    .registers 6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 136
    .local v0, "p":Ljava/util/regex/Pattern;
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 137
    .local v1, "m":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 139
    :goto_38
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "matchString":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-static {v2}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add time for millis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemEntityParser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v2    # "matchString":Ljava/lang/String;
    goto :goto_38

    .line 144
    :cond_6a
    return-void
.end method

.method private static blacklist parsingURLInfo()V
    .registers 5

    .line 264
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->URL:Ljava/util/regex/Pattern;

    .line 265
    .local v0, "p":Ljava/util/regex/Pattern;
    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 266
    .local v1, "m":Ljava/util/regex/Matcher;
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "\uff03"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mWorkStr:Ljava/lang/String;

    .line 268
    :goto_17
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 269
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "matchString":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v4, 0x7

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add URL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemEntityParser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v2    # "matchString":Ljava/lang/String;
    goto :goto_17

    .line 273
    :cond_45
    return-void
.end method

.method private static blacklist refactoringPhoneNumber()V
    .registers 8

    .line 308
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->getCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6f

    .line 309
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->getInfoList(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 312
    .local v4, "spaceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2c

    .line 313
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_29

    .line 314
    add-int/lit8 v4, v4, 0x1

    .line 312
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 318
    .end local v5    # "i":I
    :cond_2c
    if-lez v4, :cond_6f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v2

    const/16 v2, 0x8

    if-le v5, v2, :cond_6f

    .line 319
    sget-object v2, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 320
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 321
    .local v5, "m":Ljava/util/regex/Matcher;
    sget-object v6, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v6, v3, v1}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->deleteInfo(II)Z

    .line 323
    :goto_43
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 324
    sget-object v6, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->mInfo:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->setInfo(Ljava/lang/String;I)V

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add refactoring phone number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemEntityParser"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 329
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "spaceCount":I
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_6f
    return-void
.end method

.method private static blacklist removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 281
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/infoextraction/regex/SemEntityParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "onlyStartEndCheck"    # Z

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 288
    .local v1, "result":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, " "

    if-nez v3, :cond_17

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 289
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 292
    :cond_1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 293
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 296
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    if-nez p1, :cond_47

    .line 299
    const-string v2, "[:space:]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 300
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    return-object v1

    .line 304
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_47
    return-object v1
.end method
