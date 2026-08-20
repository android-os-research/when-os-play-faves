.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 5

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    if-eqz p2, :cond_d

    const/high16 p1, -0x80000000

    or-int/2addr p1, p3

    .line 1541
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    goto :goto_f

    .line 1543
    :cond_d
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    .line 1545
    :goto_f
    iput-object p4, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1564
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 1565
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 1566
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1567
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    iget v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    if-ne v1, v3, :cond_26

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1569
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    :cond_28
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 1553
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
