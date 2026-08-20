.class Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CsvUnescaper"
.end annotation


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x22

    .line 390
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 391
    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_66

    const/4 p0, 0x0

    .line 400
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v0, 0x22

    if-ne p2, v0, :cond_56

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-eq p2, v0, :cond_18

    goto :goto_56

    .line 406
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p1, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 408
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4d

    .line 412
    :cond_46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    :goto_4d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, p0, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0

    .line 401
    :cond_56
    :goto_56
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, p0, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0

    .line 397
    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CsvUnescaper should never reach the [1] index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
