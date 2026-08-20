.class Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 654
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 655
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isNumber()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 8

    const/4 p1, 0x0

    move p2, p1

    .line 668
    :goto_2
    iget-object p5, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-ge p2, p5, :cond_2c

    .line 669
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    add-int/2addr p5, p2

    .line 670
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p5, v0, :cond_19

    .line 671
    invoke-virtual {p4, p5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return p1

    .line 674
    :cond_19
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, p5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_29

    .line 675
    invoke-virtual {p4, p5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return p1

    :cond_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 679
    :cond_2c
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {p4, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 p0, 0x1

    return p0
.end method
