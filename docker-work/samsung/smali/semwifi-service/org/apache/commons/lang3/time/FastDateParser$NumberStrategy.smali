.class Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 736
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 737
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    return-void
.end method


# virtual methods
.method isNumber()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 3

    return p2
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 8

    .line 750
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 751
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez p5, :cond_1e

    :goto_a
    if-ge v0, v1, :cond_1a

    .line 756
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    .line 757
    invoke-static {p5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p5

    if-nez p5, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 761
    :cond_1a
    :goto_1a
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_22

    :cond_1e
    add-int/2addr p5, v0

    if-le v1, p5, :cond_22

    move v1, p5

    :cond_22
    :goto_22
    if-ge v0, v1, :cond_32

    .line 770
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    .line 771
    invoke-static {p5}, Ljava/lang/Character;->isDigit(C)Z

    move-result p5

    if-nez p5, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 776
    :cond_32
    :goto_32
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    if-ne p5, v0, :cond_3d

    .line 777
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p0, 0x0

    return p0

    .line 781
    :cond_3d
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    invoke-virtual {p3, p5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 782
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 784
    iget p4, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result p0

    invoke-virtual {p2, p4, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    return p0
.end method
