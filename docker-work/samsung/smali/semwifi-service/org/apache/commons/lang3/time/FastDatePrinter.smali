.class public Lorg/apache/commons/lang3/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field private static final MAX_DIGITS:I = 0xa

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1306
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 153
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Appendable;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Appendable;II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V

    return-void
.end method

.method private static appendDigits(Ljava/lang/Appendable;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 682
    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method private static appendFullDigits(Ljava/lang/Appendable;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x30

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_5c

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    const/16 v7, 0x64

    if-ge p1, v6, :cond_1c

    if-ge p1, v7, :cond_1a

    if-ge p1, v0, :cond_18

    move v6, v5

    goto :goto_1d

    :cond_18
    move v6, v2

    goto :goto_1d

    :cond_1a
    move v6, v3

    goto :goto_1d

    :cond_1c
    move v6, v4

    :goto_1d
    sub-int/2addr p2, v6

    :goto_1e
    if-lez p2, :cond_26

    .line 711
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1e

    :cond_26
    if-eq v6, v5, :cond_56

    if-eq v6, v2, :cond_47

    if-eq v6, v3, :cond_38

    if-eq v6, v4, :cond_2f

    goto :goto_7f

    .line 716
    :cond_2f
    div-int/lit16 p2, p1, 0x3e8

    add-int/2addr p2, v1

    int-to-char p2, p2

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 717
    rem-int/lit16 p1, p1, 0x3e8

    :cond_38
    if-lt p1, v7, :cond_44

    .line 720
    div-int/lit8 p2, p1, 0x64

    add-int/2addr p2, v1

    int-to-char p2, p2

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 721
    rem-int/lit8 p1, p1, 0x64

    goto :goto_47

    .line 723
    :cond_44
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_47
    :goto_47
    if-lt p1, v0, :cond_53

    .line 727
    div-int/lit8 p2, p1, 0xa

    add-int/2addr p2, v1

    int-to-char p2, p2

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 728
    rem-int/lit8 p1, p1, 0xa

    goto :goto_56

    .line 730
    :cond_53
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_56
    :goto_56
    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 733
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_7f

    :cond_5c
    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_5f
    if-eqz p1, :cond_6d

    add-int/lit8 v3, v2, 0x1

    .line 742
    rem-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v1

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 743
    div-int/lit8 p1, p1, 0xa

    move v2, v3

    goto :goto_5f

    :cond_6d
    :goto_6d
    if-ge v2, p2, :cond_75

    .line 748
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_6d

    :cond_75
    :goto_75
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7f

    .line 754
    aget-char p1, v0, v2

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_75

    :cond_7f
    :goto_7f
    return-void
.end method

.method private applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 572
    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 573
    invoke-interface {v2, p2, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_e
    move-exception p0

    .line 576
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_12
    return-object p2
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 1318
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1319
    sget-object v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 1322
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1323
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1c

    move-object v2, p0

    :cond_1c
    return-object v2
.end method

.method private init()V
    .registers 4

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 166
    array-length v0, v0

    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1e

    .line 167
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10

    .line 170
    :cond_1e
    iput v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    return-void
.end method

.method private newCalendar()Ljava/util/Calendar;
    .registers 2

    .line 463
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 670
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 671
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 630
    instance-of v0, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 633
    :cond_6
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 634
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 635
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 636
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 519
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 520
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 539
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 540
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 541
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 543
    :cond_17
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 529
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 530
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public format(J)Ljava/lang/String;
    .registers 4

    .line 444
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 445
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 446
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 427
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 428
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 429
    :cond_b
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_16

    .line 430
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :cond_16
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_25

    .line 432
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 434
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_36

    const-string p1, "<null>"

    goto :goto_3e

    .line 435
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_3e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 471
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 472
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 473
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5

    .line 489
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 490
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 491
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    instance-of p3, p1, Ljava/util/Date;

    if-eqz p3, :cond_b

    .line 408
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 409
    :cond_b
    instance-of p3, p1, Ljava/util/Calendar;

    if-eqz p3, :cond_16

    .line 410
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 411
    :cond_16
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_25

    .line 412
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 414
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_36

    const-string p1, "<null>"

    goto :goto_3e

    .line 415
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_3e
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3

    .line 510
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4

    .line 499
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 500
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 501
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 1

    .line 604
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getMaxLengthEstimate()I
    .registers 1

    .line 617
    iget p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    return p0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 1

    .line 588
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 1

    .line 596
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 646
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0xd

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 182
    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v8, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    move v12, v11

    :goto_31
    if-ge v12, v8, :cond_188

    aput v12, v10, v11

    .line 197
    iget-object v12, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v12, v10}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v12

    aget v13, v10, v11

    .line 200
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_45

    goto/16 :goto_188

    .line 206
    :cond_45
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v11, 0x79

    const/4 v9, 0x4

    if-eq v15, v11, :cond_82

    const/16 v11, 0x7a

    if-eq v15, v11, :cond_145

    const/4 v11, 0x7

    sparse-switch v15, :sswitch_data_18a

    packed-switch v15, :pswitch_data_1bc

    packed-switch v15, :pswitch_data_1ca

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal pattern component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_73
    const/4 v9, 0x1

    if-ne v14, v9, :cond_79

    .line 291
    sget-object v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_b6

    :cond_79
    const/4 v9, 0x2

    if-ne v14, v9, :cond_7f

    .line 293
    sget-object v9, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    goto :goto_b6

    .line 295
    :cond_7f
    sget-object v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_b6

    :cond_82
    :pswitch_82
    const/4 v11, 0x0

    const/4 v12, 0x2

    goto/16 :goto_161

    .line 280
    :pswitch_86
    invoke-static {v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->getRule(I)Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    move-result-object v9

    goto :goto_b6

    .line 268
    :pswitch_8b
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    :pswitch_90
    const/16 v9, 0xb

    .line 241
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    .line 210
    :pswitch_97
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_b7

    :pswitch_9e
    const/16 v9, 0x8

    .line 262
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    .line 253
    :pswitch_a5
    new-instance v12, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    if-ge v14, v9, :cond_ab

    move-object v9, v7

    goto :goto_ac

    :cond_ab
    move-object v9, v6

    :goto_ac
    invoke-direct {v12, v11, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v9, v12

    goto :goto_b6

    :pswitch_b1
    const/4 v9, 0x6

    .line 259
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    :goto_b6
    const/4 v11, 0x0

    :goto_b7
    const/4 v12, 0x1

    goto/16 :goto_17c

    :sswitch_ba
    const/4 v9, 0x3

    .line 265
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    .line 256
    :sswitch_c0
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;

    invoke-virtual {v0, v11, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto :goto_b6

    :sswitch_ca
    const/16 v9, 0xd

    .line 247
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    :sswitch_d1
    const/16 v9, 0xc

    .line 244
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    .line 274
    :sswitch_d8
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;

    const/16 v11, 0xb

    invoke-virtual {v0, v11, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto :goto_b6

    .line 238
    :sswitch_e4
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;

    const/16 v11, 0xa

    invoke-virtual {v0, v11, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto :goto_b6

    :sswitch_f0
    const/4 v9, 0x5

    .line 235
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    .line 271
    :sswitch_f6
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v11, 0x9

    invoke-direct {v9, v11, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_b6

    :sswitch_fe
    const/16 v9, 0xe

    .line 250
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    :sswitch_105
    if-lt v14, v9, :cond_10e

    .line 225
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v11, 0x2

    invoke-direct {v9, v11, v4}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_b6

    :cond_10e
    const/4 v9, 0x3

    const/4 v11, 0x2

    if-ne v14, v9, :cond_118

    .line 227
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    invoke-direct {v9, v11, v5}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_b6

    :cond_118
    if-ne v14, v11, :cond_11d

    .line 229
    sget-object v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    goto :goto_b6

    .line 231
    :cond_11d
    sget-object v9, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    goto :goto_b6

    :sswitch_120
    const/16 v9, 0xa

    .line 277
    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_b6

    :sswitch_127
    const/4 v9, 0x1

    .line 299
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 300
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v9, :cond_13e

    .line 301
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    goto/16 :goto_b6

    .line 303
    :cond_13e
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;

    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b6

    :cond_145
    if-lt v14, v9, :cond_154

    .line 284
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v11, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v14, 0x1

    invoke-direct {v9, v11, v12, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    move v12, v14

    const/4 v11, 0x0

    goto :goto_17c

    .line 286
    :cond_154
    new-instance v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v11, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    move v11, v14

    goto/16 :goto_b7

    :goto_161
    if-ne v14, v12, :cond_167

    .line 215
    sget-object v9, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    const/4 v12, 0x1

    goto :goto_170

    .line 217
    :cond_167
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v9

    :goto_170
    const/16 v14, 0x59

    if-ne v15, v14, :cond_17c

    .line 220
    new-instance v14, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;

    check-cast v9, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-direct {v14, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    move-object v9, v14

    .line 310
    :cond_17c
    :goto_17c
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v13, 0x1

    move/from16 v16, v12

    move v12, v9

    move/from16 v9, v16

    goto/16 :goto_31

    :cond_188
    :goto_188
    return-object v2

    nop

    :sswitch_data_18a
    .sparse-switch
        0x27 -> :sswitch_127
        0x4b -> :sswitch_120
        0x4d -> :sswitch_105
        0x53 -> :sswitch_fe
        0x61 -> :sswitch_f6
        0x64 -> :sswitch_f0
        0x68 -> :sswitch_e4
        0x6b -> :sswitch_d8
        0x6d -> :sswitch_d1
        0x73 -> :sswitch_ca
        0x75 -> :sswitch_c0
        0x77 -> :sswitch_ba
    .end sparse-switch

    :pswitch_data_1bc
    .packed-switch 0x44
        :pswitch_b1
        :pswitch_a5
        :pswitch_9e
        :pswitch_97
        :pswitch_90
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x57
        :pswitch_8b
        :pswitch_86
        :pswitch_82
        :pswitch_73
    .end packed-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 15

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 326
    aget v1, p2, v0

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    const/16 v5, 0x41

    if-lt v3, v5, :cond_18

    if-le v3, v4, :cond_20

    :cond_18
    const/16 v6, 0x7a

    const/16 v7, 0x61

    if-lt v3, v7, :cond_32

    if-gt v3, v6, :cond_32

    .line 333
    :cond_20
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_65

    .line 336
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_65

    .line 338
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_23

    :cond_32
    const/16 v3, 0x27

    .line 346
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v0

    :goto_38
    if-ge v1, v2, :cond_65

    .line 351
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_52

    add-int/lit8 v10, v1, 0x1

    if-ge v10, v2, :cond_4f

    .line 354
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v3, :cond_4f

    .line 357
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v10

    goto :goto_62

    :cond_4f
    xor-int/lit8 v8, v8, 0x1

    goto :goto_62

    :cond_52
    if-nez v8, :cond_5f

    if-lt v9, v5, :cond_58

    if-le v9, v4, :cond_5c

    :cond_58
    if-lt v9, v7, :cond_5f

    if-gt v9, v6, :cond_5f

    :cond_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_65

    .line 366
    :cond_5f
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 371
    :cond_65
    :goto_65
    aput v1, p2, v0

    .line 372
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;
    .registers 3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_12

    const/4 p0, 0x2

    if-eq p2, p0, :cond_c

    .line 389
    new-instance p0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    return-object p0

    .line 387
    :cond_c
    new-instance p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    return-object p0

    .line 385
    :cond_12
    new-instance p0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
