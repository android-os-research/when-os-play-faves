.class public Lorg/apache/commons/lang3/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "ExtendedMessageFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private toPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const-class v0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 127
    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p2}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 129
    iput-object p3, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 9

    const/16 v0, 0x27

    if-eqz p3, :cond_7

    .line 482
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    :cond_7
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 486
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 489
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 490
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    aget-char v4, v2, v4

    if-ne v4, v0, :cond_34

    .line 491
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    if-nez p3, :cond_2b

    const/4 p3, 0x0

    goto :goto_33

    .line 493
    :cond_2b
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    sub-int/2addr p0, v1

    .line 492
    invoke-virtual {p3, v2, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_33
    return-object p3

    .line 495
    :cond_34
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 497
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unterminated quoted string at position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1b

    .line 517
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1b

    .line 520
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    :cond_1b
    :goto_1b
    return p0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .registers 5

    .line 304
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    const/16 v0, 0x2c

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_23

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v2

    goto :goto_24

    :cond_23
    move-object v0, v1

    .line 312
    :goto_24
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/text/FormatFactory;

    if-eqz v2, :cond_37

    .line 314
    invoke-virtual {p0}, Ljava/text/MessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-interface {v2, p1, v0, p0}, Lorg/apache/commons/lang3/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p0

    return-object p0

    :cond_37
    return-object v1
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 4

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 404
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 407
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 408
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v3, -0x1

    .line 411
    :cond_19
    :goto_19
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 412
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_67

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_41

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_38

    goto :goto_3a

    :cond_38
    add-int/lit8 v2, v2, -0x1

    .line 433
    :goto_3a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_19

    :cond_41
    add-int/lit8 v2, v2, 0x1

    .line 419
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    .line 423
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_19

    const/16 v5, 0x2c

    .line 425
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 415
    :cond_67
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 437
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .registers 2

    .line 462
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 8

    .line 370
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 371
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 372
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 374
    :goto_c
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 375
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_38

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_2b

    goto :goto_3e

    :cond_2b
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3e

    .line 382
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 386
    :cond_3b
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 374
    :cond_3e
    :goto_3e
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_c

    .line 392
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unterminated format element at position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .registers 10

    .line 328
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 329
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_5d

    .line 332
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 333
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 334
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x7d

    const/16 v6, 0x2c

    if-eqz v3, :cond_3d

    .line 335
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 336
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_3d

    if-eq v2, v5, :cond_3d

    move v2, v4

    goto :goto_59

    :cond_3d
    if-eq v2, v6, :cond_41

    if-ne v2, v5, :cond_50

    .line 342
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 344
    :try_start_47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4f} :catch_50

    return p0

    .line 350
    :catch_50
    :cond_50
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 332
    :goto_59
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_d

    :cond_5d
    if-eqz v2, :cond_86

    .line 354
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format argument index at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unterminated format element at position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .registers 5

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 450
    :cond_4
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v0

    .line 451
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    if-lez v0, :cond_24

    .line 452
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_24
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .registers 14

    .line 148
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v0, :cond_e

    .line 149
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 150
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-void

    .line 153
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v6, v4

    .line 160
    :goto_2c
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_d8

    .line 161
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    const/16 v8, 0x27

    if-eq v7, v8, :cond_d3

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_46

    goto/16 :goto_ae

    :cond_46
    add-int/lit8 v6, v6, 0x1

    .line 167
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 168
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 169
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v9

    .line 170
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 174
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aget-char v8, v5, v8

    const/16 v9, 0x2c

    const/4 v10, 0x0

    if-ne v8, v9, :cond_80

    .line 176
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v8

    .line 175
    invoke-direct {p0, p1, v8}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-direct {p0, v8}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v11

    if-nez v11, :cond_82

    .line 179
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    :cond_80
    move-object v8, v10

    move-object v11, v8

    .line 182
    :cond_82
    :goto_82
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_88

    goto :goto_89

    :cond_88
    move-object v10, v8

    .line 183
    :goto_89
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v6, :cond_95

    move v8, v9

    goto :goto_96

    :cond_95
    move v8, v4

    :goto_96
    invoke-static {v8}, Lorg/apache/commons/lang3/Validate;->isTrue(Z)V

    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v6, :cond_a0

    goto :goto_a1

    :cond_a0
    move v9, v4

    :goto_a1
    invoke-static {v9}, Lorg/apache/commons/lang3/Validate;->isTrue(Z)V

    .line 186
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aget-char v8, v5, v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_bc

    .line 192
    :goto_ae
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto/16 :goto_2c

    .line 187
    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unreadable format element at position "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 163
    :cond_d3
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_2c

    .line 196
    :cond_d8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 197
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 198
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 199
    invoke-virtual {p0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object p1

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    if-eqz v1, :cond_107

    .line 206
    aput-object v1, p1, v4

    :cond_107
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 209
    :cond_10a
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    :cond_10d
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 273
    :cond_8
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 276
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    .line 279
    :cond_1e
    check-cast p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;

    .line 280
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v1

    .line 283
    :cond_2b
    iget-object p0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 291
    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 292
    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 293
    iget-object p0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 3

    .line 222
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 3

    .line 234
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 2

    .line 245
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 2

    .line 256
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 1

    .line 138
    iget-object p0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object p0
.end method
