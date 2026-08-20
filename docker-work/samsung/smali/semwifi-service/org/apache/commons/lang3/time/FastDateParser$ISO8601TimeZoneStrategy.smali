.class Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final ISO_8601_1_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final ISO_8601_2_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 930
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 931
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 932
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 918
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 919
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .registers 1

    .line 911
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object v0
.end method

.method static getStrategy(I)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 948
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    .line 950
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 946
    :cond_14
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    .line 944
    :cond_17
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 4

    .line 927
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
