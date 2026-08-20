.class Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedNumberField"
.end annotation


# instance fields
.field private final mField:I

.field private final mSize:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-lt p2, v0, :cond_b

    .line 1012
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;->mField:I

    .line 1013
    iput p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;->mSize:I

    return-void

    .line 1010
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    iget p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;->mSize:I

    # invokes: Lorg/apache/commons/lang3/time/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V
    invoke-static {p1, p2, p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;->appendTo(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 1

    .line 1021
    iget p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;->mSize:I

    return p0
.end method
