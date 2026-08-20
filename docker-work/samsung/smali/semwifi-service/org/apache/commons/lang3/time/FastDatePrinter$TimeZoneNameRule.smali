.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;
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
    name = "TimeZoneNameRule"
.end annotation


# instance fields
.field private final mDaylight:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mStandard:Ljava/lang/String;

.field private final mStyle:I


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .registers 5

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    .line 1349
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStyle:I

    const/4 v0, 0x0

    .line 1351
    invoke-static {p1, v0, p3, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1352
    invoke-static {p1, v0, p3, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/16 v1, 0x10

    .line 1372
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_19

    const/4 p2, 0x0

    .line 1373
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStyle:I

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p2, v1, p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_25

    :cond_19
    const/4 p2, 0x1

    .line 1375
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStyle:I

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p2, v1, p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_25
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 1363
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
