.class public Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "UnicodeEscaper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method protected constructor <init>(IIZ)V
    .registers 4

    .line 54
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    .line 56
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    .line 57
    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    return-void
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 2

    const/4 v0, 0x0

    .line 77
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 2

    const v0, 0x7fffffff

    .line 67
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 4

    .line 99
    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 4

    .line 88
    new-instance v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected toUtf16Escape(I)Ljava/lang/String;
    .registers 3

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->hex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(ILjava/io/Writer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 108
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v0, :cond_17

    :cond_d
    return v1

    .line 112
    :cond_e
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v0, :cond_17

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-gt p1, v0, :cond_17

    return v1

    :cond_17
    const v0, 0xffff

    if-le p1, v0, :cond_24

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->toUtf16Escape(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4d

    :cond_24
    const-string p0, "\\u"

    .line 121
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    sget-object p0, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->HEX_DIGITS:[C

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    aget-char v0, p0, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0xf

    .line 123
    aget-char v0, p0, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 124
    aget-char v0, p0, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    and-int/lit8 p1, p1, 0xf

    .line 125
    aget-char p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    :goto_4d
    const/4 p0, 0x1

    return p0
.end method
