.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field public static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field public static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field public static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final domain:Ljava/lang/String;

.field public final expiresAt:J

.field public final hostOnly:Z

.field public final httpOnly:Z

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final persistent:Z

.field public final secure:Z

.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 72
    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 74
    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    .line 75
    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 76
    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    .line 77
    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cookie$Builder;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 82
    iget-object v1, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 83
    iget-object v2, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 85
    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 87
    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 88
    iput-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 90
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    .line 91
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 92
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    .line 93
    iget-boolean p1, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean p1, p0, Lokhttp3/Cookie;->hostOnly:Z

    return-void

    .line 83
    :cond_2e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "builder.domain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "builder.value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_3e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "builder.name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_3b

    .line 390
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_32

    :cond_f
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_32

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x39

    if-le v0, v1, :cond_32

    :cond_1b
    const/16 v1, 0x61

    if-lt v0, v1, :cond_23

    const/16 v1, 0x7a

    if-le v0, v1, :cond_32

    :cond_23
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2b

    const/16 v1, 0x5a

    if-le v0, v1, :cond_32

    :cond_2b
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    move v0, v2

    :goto_33
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_38

    return p1

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3b
    return p2
.end method

.method public static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 190
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_27

    .line 192
    invoke-static {p0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 27
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p3

    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3b

    .line 225
    invoke-static {v0, v2, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    const/16 v5, 0x3d

    .line 227
    invoke-static {v0, v2, v4, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v4, :cond_17

    return-object v7

    .line 230
    :cond_17
    invoke-static {v0, v2, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 231
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_137

    invoke-static {v9}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2a

    goto/16 :goto_137

    :cond_2a
    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 233
    invoke-static {v0, v6, v4}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-static {v6}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v10, :cond_37

    return-object v7

    :cond_37
    add-int/2addr v4, v8

    const-wide/16 v10, -0x1

    const-wide v12, 0xe677d21fdbffL

    move v15, v2

    move/from16 v16, v15

    move/from16 v18, v16

    move-object v14, v7

    move/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    move-object v8, v14

    :goto_4c
    if-ge v4, v1, :cond_bc

    .line 247
    invoke-static {v0, v4, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v7

    .line 249
    invoke-static {v0, v4, v7, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    .line 250
    invoke-static {v0, v4, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    if-ge v3, v7, :cond_63

    add-int/lit8 v3, v3, 0x1

    .line 252
    invoke-static {v0, v3, v7}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_65

    :cond_63
    const-string v3, ""

    :goto_65
    const-string v5, "expires"

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 257
    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v2, v4}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v21
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_75} :catch_b4

    goto :goto_82

    :cond_76
    const-string v5, "max-age"

    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 264
    :try_start_7e
    invoke-static {v3}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_82} :catch_b4

    :goto_82
    const/16 v18, 0x1

    goto :goto_b4

    :cond_85
    const-string v5, "domain"

    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 271
    :try_start_8d
    invoke-static {v3}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_91} :catch_b4

    move/from16 v17, v2

    goto :goto_b4

    :cond_94
    const-string/jumbo v5, "path"

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    move-object v8, v3

    goto :goto_b4

    :cond_9f
    const-string/jumbo v3, "secure"

    .line 278
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    const/4 v15, 0x1

    goto :goto_b4

    :cond_aa
    const-string v3, "httponly"

    .line 280
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const/16 v16, 0x1

    :catch_b4
    :cond_b4
    :goto_b4
    add-int/lit8 v4, v7, 0x1

    const/16 v3, 0x3b

    const/16 v5, 0x3d

    const/4 v7, 0x0

    goto :goto_4c

    :cond_bc
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v3, v19, v0

    if-nez v3, :cond_c4

    :cond_c2
    move-wide v11, v0

    goto :goto_e9

    :cond_c4
    cmp-long v0, v19, v10

    if-eqz v0, :cond_e7

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v0, v19, v0

    if-gtz v0, :cond_d6

    const-wide/16 v0, 0x3e8

    mul-long v19, v19, v0

    goto :goto_db

    :cond_d6
    const-wide v19, 0x7fffffffffffffffL

    :goto_db
    add-long v0, p0, v19

    cmp-long v3, v0, p0

    if-ltz v3, :cond_e5

    cmp-long v3, v0, v12

    if-lez v3, :cond_c2

    :cond_e5
    move-wide v11, v12

    goto :goto_e9

    :cond_e7
    move-wide/from16 v11, v21

    .line 302
    :goto_e9
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    if-nez v14, :cond_f2

    move-object v13, v0

    const/4 v1, 0x0

    goto :goto_fc

    .line 305
    :cond_f2
    invoke-static {v0, v14}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const/4 v1, 0x0

    return-object v1

    :cond_fa
    const/4 v1, 0x0

    move-object v13, v14

    .line 310
    :goto_fc
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_111

    .line 311
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_111

    return-object v1

    :cond_111
    const-string v0, "/"

    if-eqz v8, :cond_11e

    .line 317
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11c

    goto :goto_11e

    :cond_11c
    move-object v14, v8

    goto :goto_12f

    .line 318
    :cond_11e
    :goto_11e
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eqz v3, :cond_12e

    .line 320
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_12e
    move-object v14, v0

    .line 323
    :goto_12f
    new-instance v0, Lokhttp3/Cookie;

    move-object v8, v0

    move-object v10, v6

    invoke-direct/range {v8 .. v18}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    :cond_137
    :goto_137
    move-object v0, v7

    return-object v0
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    .line 441
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_28

    .line 445
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_25

    :cond_1b
    if-nez v1, :cond_22

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    :cond_22
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    if-eqz v1, :cond_2f

    .line 452
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_33

    .line 453
    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_33
    return-object p0
.end method

.method public static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 432
    :cond_13
    invoke-static {p0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    return-object p0

    .line 434
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 427
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseExpires(Ljava/lang/String;II)J
    .registers 15

    const/4 v0, 0x0

    .line 329
    invoke-static {p0, p1, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    .line 337
    sget-object v1, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_12
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge p1, p2, :cond_9f

    add-int/lit8 v11, p1, 0x1

    .line 340
    invoke-static {p0, v11, p2, v10}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v11

    .line 341
    invoke-virtual {v1, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v4, v2, :cond_47

    .line 343
    sget-object p1, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 344
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 345
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 p1, 0x3

    .line 346
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_97

    :cond_47
    if-ne v5, v2, :cond_5e

    .line 347
    sget-object p1, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 348
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_97

    :cond_5e
    if-ne v6, v2, :cond_81

    .line 349
    sget-object p1, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_81

    .line 350
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 v6, p1, 0x4

    goto :goto_97

    :cond_81
    if-ne v3, v2, :cond_97

    .line 352
    sget-object p1, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 353
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_97
    :goto_97
    add-int/lit8 v11, v11, 0x1

    .line 356
    invoke-static {p0, v11, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    goto/16 :goto_12

    :cond_9f
    const/16 p0, 0x46

    if-lt v3, p0, :cond_a9

    const/16 p0, 0x63

    if-gt v3, p0, :cond_a9

    add-int/lit16 v3, v3, 0x76c

    :cond_a9
    if-ltz v3, :cond_b1

    const/16 p0, 0x45

    if-gt v3, p0, :cond_b1

    add-int/lit16 v3, v3, 0x7d0

    :cond_b1
    const/16 p0, 0x641

    if-lt v3, p0, :cond_119

    if-eq v6, v2, :cond_113

    if-lt v5, v10, :cond_10d

    const/16 p0, 0x1f

    if-gt v5, p0, :cond_10d

    if-ltz v4, :cond_107

    const/16 p0, 0x17

    if-gt v4, p0, :cond_107

    if-ltz v7, :cond_101

    const/16 p0, 0x3b

    if-gt v7, p0, :cond_101

    if-ltz v8, :cond_fb

    if-gt v8, p0, :cond_fb

    .line 372
    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 373
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 374
    invoke-virtual {p0, v10, v3}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v6, v10

    .line 375
    invoke-virtual {p0, v9, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 376
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 377
    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 378
    invoke-virtual {p0, p1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 379
    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 380
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 381
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    .line 370
    :cond_fb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 369
    :cond_101
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 368
    :cond_107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 367
    :cond_10d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 366
    :cond_113
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 365
    :cond_119
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseMaxAge(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    .line 410
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_d

    goto :goto_e

    :cond_d
    move-wide v0, v2

    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    const-string v3, "-?\\d+"

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v2, "-"

    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_26

    :cond_21
    const-wide v0, 0x7fffffffffffffffL

    :goto_26
    return-wide v0

    .line 417
    :cond_27
    throw v2
.end method

.method public static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 4

    .line 200
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 206
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "/"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 208
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2f

    if-ne p0, p1, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 586
    instance-of v0, p1, Lokhttp3/Cookie;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 587
    :cond_6
    check-cast p1, Lokhttp3/Cookie;

    .line 588
    iget-object v0, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-wide v2, p1, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-boolean v0, p1, Lokhttp3/Cookie;->secure:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p1, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p1, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v0, v2, :cond_51

    iget-boolean p1, p1, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean p0, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne p1, p0, :cond_51

    const/4 v1, 0x1

    :cond_51
    return v1
.end method

.method public expiresAt()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .line 601
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 602
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 603
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 604
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 605
    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 606
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 607
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 608
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 609
    iget-boolean p0, p0, Lokhttp3/Cookie;->hostOnly:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    return v1
.end method

.method public hostOnly()Z
    .registers 1

    .line 135
    iget-boolean p0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return p0
.end method

.method public httpOnly()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return p0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .registers 4

    .line 173
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v0, :cond_f

    .line 174
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_19

    .line 175
    :cond_f
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_19
    const/4 v1, 0x0

    if-nez v0, :cond_1d

    return v1

    .line 178
    :cond_1d
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    .line 180
    :cond_26
    iget-boolean p0, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz p0, :cond_31

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result p0

    if-nez p0, :cond_31

    return v1

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object p0
.end method

.method public path()Ljava/lang/String;
    .registers 1

    .line 152
    iget-object p0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object p0
.end method

.method public persistent()Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lokhttp3/Cookie;->persistent:Z

    return p0
.end method

.method public secure()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lokhttp3/Cookie;->secure:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 7

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_39

    .line 557
    iget-wide v1, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    const-string v1, "; max-age=0"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_26
    const-string v1, "; expires="

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_39
    :goto_39
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_4e

    const-string v1, "; domain="

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_49

    const-string p1, "."

    .line 567
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_49
    iget-object p1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    const-string p1, "; path="

    .line 572
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-boolean p1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz p1, :cond_61

    const-string p1, "; secure"

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_61
    iget-boolean p0, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz p0, :cond_6a

    const-string p0, "; httponly"

    .line 579
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object p0
.end method
