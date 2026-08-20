.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;
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
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->mField:I

    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x64

    if-ge p2, p0, :cond_8

    .line 1078
    # invokes: Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    goto :goto_c

    :cond_8
    const/4 p0, 0x2

    .line 1080
    # invokes: Lorg/apache/commons/lang3/time/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V
    invoke-static {p1, p2, p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    :goto_c
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->appendTo(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
