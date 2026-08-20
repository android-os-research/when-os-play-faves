.class Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextField"
.end annotation


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .registers 3

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mField:I

    .line 878
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    iget p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mField:I

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public estimateLength()I
    .registers 4

    .line 887
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 888
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_14
    return v1
.end method
