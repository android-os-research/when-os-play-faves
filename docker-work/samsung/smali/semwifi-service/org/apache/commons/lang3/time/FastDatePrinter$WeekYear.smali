.class Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;
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
    name = "WeekYear"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V
    .registers 2

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1285
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1300
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-virtual {p2}, Ljava/util/Calendar;->getWeekYear()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 1

    .line 1290
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->estimateLength()I

    move-result p0

    return p0
.end method
