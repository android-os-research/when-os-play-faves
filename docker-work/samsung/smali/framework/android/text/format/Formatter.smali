.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final greylist-max-o FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final greylist-max-o FLAG_IEC_UNITS:I = 0x8

.field public static final greylist-max-o FLAG_SHORTER:I = 0x1

.field public static final greylist-max-o FLAG_SI_UNITS:I = 0x4

.field private static final greylist-max-o MILLIS_PER_MINUTE:I = 0xea60

.field private static final greylist-max-o SECONDS_PER_DAY:I = 0x15180

.field private static final greylist-max-o SECONDS_PER_HOUR:I = 0xe10

.field private static final greylist-max-o SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .line 69
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 70
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 71
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    :cond_14
    return-object p1
.end method

.method public static greylist formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .registers 20
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    .line 126
    move-wide/from16 v0, p1

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_9

    const/16 v2, 0x400

    goto :goto_b

    :cond_9
    const/16 v2, 0x3e8

    .line 127
    .local v2, "unit":I
    :goto_b
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_15

    move v5, v7

    goto :goto_16

    :cond_15
    move v5, v6

    .line 128
    .local v5, "isNegative":Z
    :goto_16
    if-eqz v5, :cond_1b

    neg-long v8, v0

    long-to-float v8, v8

    goto :goto_1c

    :cond_1b
    long-to-float v8, v0

    .line 129
    .local v8, "result":F
    :goto_1c
    const v9, 0x1040285

    .line 130
    .local v9, "suffix":I
    const-wide/16 v10, 0x1

    .line 131
    .local v10, "mult":J
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v13, v8, v12

    if-lez v13, :cond_2d

    .line 132
    const v9, 0x1040687

    .line 133
    int-to-long v10, v2

    .line 134
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 136
    :cond_2d
    cmpl-float v13, v8, v12

    if-lez v13, :cond_38

    .line 137
    const v9, 0x10407aa

    .line 138
    int-to-long v13, v2

    mul-long/2addr v10, v13

    .line 139
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 141
    :cond_38
    cmpl-float v13, v8, v12

    if-lez v13, :cond_43

    .line 142
    const v9, 0x104057a

    .line 143
    int-to-long v13, v2

    mul-long/2addr v10, v13

    .line 144
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 146
    :cond_43
    cmpl-float v13, v8, v12

    if-lez v13, :cond_4e

    .line 147
    const v9, 0x1040df8

    .line 148
    int-to-long v13, v2

    mul-long/2addr v10, v13

    .line 149
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 151
    :cond_4e
    cmpl-float v12, v8, v12

    if-lez v12, :cond_59

    .line 152
    const v9, 0x1040ae6

    .line 153
    int-to-long v12, v2

    mul-long/2addr v10, v12

    .line 154
    int-to-float v12, v2

    div-float/2addr v8, v12

    .line 161
    :cond_59
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_92

    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_66

    goto :goto_92

    .line 164
    :cond_66
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_71

    .line 165
    const/16 v12, 0x64

    .line 166
    .local v12, "roundFactor":I
    const-string v13, "%.2f"

    .local v13, "roundFormat":Ljava/lang/String;
    goto :goto_95

    .line 167
    .end local v12    # "roundFactor":I
    .end local v13    # "roundFormat":Ljava/lang/String;
    :cond_71
    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_85

    .line 168
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_80

    .line 169
    const/16 v12, 0xa

    .line 170
    .restart local v12    # "roundFactor":I
    const-string v13, "%.1f"

    .restart local v13    # "roundFormat":Ljava/lang/String;
    goto :goto_95

    .line 172
    .end local v12    # "roundFactor":I
    .end local v13    # "roundFormat":Ljava/lang/String;
    :cond_80
    const/16 v12, 0x64

    .line 173
    .restart local v12    # "roundFactor":I
    const-string v13, "%.2f"

    .restart local v13    # "roundFormat":Ljava/lang/String;
    goto :goto_95

    .line 176
    .end local v12    # "roundFactor":I
    .end local v13    # "roundFormat":Ljava/lang/String;
    :cond_85
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_8d

    .line 177
    const/4 v12, 0x1

    .line 178
    .restart local v12    # "roundFactor":I
    const-string v13, "%.0f"

    .restart local v13    # "roundFormat":Ljava/lang/String;
    goto :goto_95

    .line 180
    .end local v12    # "roundFactor":I
    .end local v13    # "roundFormat":Ljava/lang/String;
    :cond_8d
    const/16 v12, 0x64

    .line 181
    .restart local v12    # "roundFactor":I
    const-string v13, "%.2f"

    .restart local v13    # "roundFormat":Ljava/lang/String;
    goto :goto_95

    .line 162
    .end local v12    # "roundFactor":I
    .end local v13    # "roundFormat":Ljava/lang/String;
    :cond_92
    :goto_92
    const/4 v12, 0x1

    .line 163
    .restart local v12    # "roundFactor":I
    const-string v13, "%.0f"

    .line 185
    .restart local v13    # "roundFormat":Ljava/lang/String;
    :goto_95
    if-eqz v5, :cond_98

    .line 186
    neg-float v8, v8

    .line 188
    :cond_98
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v7, v6

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "roundedString":Ljava/lang/String;
    and-int/lit8 v7, p3, 0x2

    if-nez v7, :cond_a9

    goto :goto_b3

    .line 194
    :cond_a9
    int-to-float v3, v12

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v10

    int-to-long v14, v12

    div-long/2addr v3, v14

    :goto_b3
    nop

    .line 196
    .local v3, "roundedBytes":J
    move-object/from16 v7, p0

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 198
    .local v14, "units":Ljava/lang/String;
    new-instance v15, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v15, v6, v14, v3, v4}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v15
.end method

.method public static whitelist formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .line 96
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    .line 101
    if-nez p0, :cond_5

    .line 102
    const-string v0, ""

    return-object v0

    .line 104
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 105
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const v1, 0x104051f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist formatIpAddress(I)Ljava/lang/String;
    .registers 2
    .param p0, "ipv4Address"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    invoke-static {p0}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .line 229
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 231
    .local v0, "secondsLong":J
    const/4 v2, 0x0

    .local v2, "days":I
    const/4 v3, 0x0

    .local v3, "hours":I
    const/4 v4, 0x0

    .line 232
    .local v4, "minutes":I
    const-wide/32 v5, 0x15180

    cmp-long v7, v0, v5

    if-ltz v7, :cond_17

    .line 233
    div-long v5, v0, v5

    long-to-int v2, v5

    .line 234
    const v5, 0x15180

    mul-int/2addr v5, v2

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 236
    :cond_17
    const-wide/16 v5, 0xe10

    cmp-long v7, v0, v5

    if-ltz v7, :cond_24

    .line 237
    div-long v5, v0, v5

    long-to-int v3, v5

    .line 238
    mul-int/lit16 v5, v3, 0xe10

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 240
    :cond_24
    const-wide/16 v5, 0x3c

    cmp-long v7, v0, v5

    if-ltz v7, :cond_31

    .line 241
    div-long v5, v0, v5

    long-to-int v4, v5

    .line 242
    mul-int/lit8 v5, v4, 0x3c

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 244
    :cond_31
    long-to-int v5, v0

    .line 246
    .local v5, "seconds":I
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    .line 247
    .local v6, "locale":Ljava/util/Locale;
    sget-object v7, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v6, v7}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v7

    .line 249
    .local v7, "measureFormat":Landroid/icu/text/MeasureFormat;
    const/4 v8, 0x2

    if-ge v2, v8, :cond_f8

    if-lez v2, :cond_45

    if-nez v3, :cond_45

    goto/16 :goto_f8

    .line 252
    :cond_45
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v2, :cond_6a

    .line 253
    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    .line 253
    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 256
    :cond_6a
    if-ge v3, v8, :cond_e3

    if-lez v3, :cond_71

    if-nez v4, :cond_71

    goto :goto_e3

    .line 259
    :cond_71
    if-lez v3, :cond_94

    .line 260
    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    .line 262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    .line 260
    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 263
    :cond_94
    if-ge v4, v8, :cond_ce

    if-lez v4, :cond_9b

    if-nez v5, :cond_9b

    goto :goto_ce

    .line 266
    :cond_9b
    if-lez v4, :cond_be

    .line 267
    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    .line 268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    .line 267
    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 271
    :cond_be
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 264
    :cond_ce
    :goto_ce
    add-int/lit8 v8, v5, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v4, v8

    .line 265
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 257
    :cond_e3
    :goto_e3
    add-int/lit8 v8, v4, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    .line 258
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 250
    :cond_f8
    :goto_f8
    add-int/lit8 v8, v3, 0xc

    div-int/lit8 v8, v8, 0x18

    add-int/2addr v2, v8

    .line 251
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static greylist formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .line 285
    const-wide/32 v0, 0xea60

    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    .line 287
    .local v2, "minutesRoundedUp":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1a

    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    goto :goto_1a

    .line 294
    :cond_14
    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_1a
    :goto_1a
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 289
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    .line 291
    .local v1, "measureFormat":Landroid/icu/text/MeasureFormat;
    new-instance v4, Landroid/icu/util/Measure;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v4, v5, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v4}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .line 114
    if-nez p0, :cond_5

    .line 115
    const-string v0, ""

    return-object v0

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 119
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const v1, 0x104051f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
