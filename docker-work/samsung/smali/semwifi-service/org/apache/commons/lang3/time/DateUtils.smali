.class public Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DateUtils$DateIterator;,
        Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    }
.end annotation


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const/16 v3, 0xd

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/16 v3, 0xc

    aput v3, v2, v4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v3, [I

    .line 83
    fill-array-data v2, :array_48

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_50

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_5a

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    aput v1, v2, v4

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [I

    aput v4, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_48
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_50
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .registers 4

    .line 515
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 518
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 519
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x5

    .line 444
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xb

    .line 458
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xe

    .line 500
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xc

    .line 472
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x2

    .line 416
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xd

    .line 486
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x3

    .line 430
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x1

    .line 402
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 3

    if-eqz p0, :cond_e

    .line 918
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 919
    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    return-object p0

    .line 916
    :cond_e
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    if-eqz p0, :cond_37

    .line 944
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 945
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 946
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1c

    .line 947
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 949
    :cond_1c
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find ceiling of for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 942
    :cond_37
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 891
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 892
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 893
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 894
    sget-object p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 895
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J
    .registers 13

    if-eqz p0, :cond_8a

    const-wide/16 v0, 0x0

    .line 1675
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_b

    const/4 v4, 0x0

    goto :goto_c

    :cond_b
    move v4, v3

    :goto_c
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq p1, v3, :cond_1f

    if-eq p1, v7, :cond_14

    goto :goto_2a

    .line 1683
    :cond_14
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v8, v4

    int-to-long v8, v8

    invoke-virtual {p2, v8, v9, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    goto :goto_29

    .line 1680
    :cond_1f
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v8, v4

    int-to-long v8, v8

    invoke-virtual {p2, v8, v9, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    :goto_29
    add-long/2addr v0, v8

    :goto_2a
    if-eq p1, v3, :cond_51

    if-eq p1, v7, :cond_51

    if-eq p1, v6, :cond_51

    if-eq p1, v5, :cond_51

    packed-switch p1, :pswitch_data_90

    .line 1709
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    const/16 p1, 0xb

    .line 1697
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :pswitch_5f
    const/16 p1, 0xc

    .line 1700
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :pswitch_6d
    const/16 p1, 0xd

    .line 1703
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :pswitch_7b
    const/16 p1, 0xe

    .line 1706
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long p0, p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :pswitch_89
    return-wide v0

    .line 1670
    :cond_8a
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_90
    .packed-switch 0xb
        :pswitch_5f
        :pswitch_6d
        :pswitch_7b
        :pswitch_89
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J
    .registers 4

    .line 1651
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1652
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1653
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1654
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .registers 3

    .line 1636
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .registers 3

    .line 1445
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .registers 3

    .line 1596
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .registers 3

    .line 1407
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .registers 3

    .line 1483
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .registers 3

    .line 1293
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .registers 3

    .line 1558
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .registers 3

    .line 1369
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .registers 3

    .line 1520
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .registers 3

    .line 1331
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_26

    .line 195
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_26

    const/4 v1, 0x6

    .line 196
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_26

    move v0, v3

    :cond_26
    return v0

    .line 192
    :cond_27
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 3

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 168
    :cond_17
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 4

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    .line 233
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0

    .line 231
    :cond_1c
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 215
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0

    .line 213
    :cond_14
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6

    if-eqz p0, :cond_62

    if-eqz p1, :cond_62

    const/16 v0, 0xe

    .line 253
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_60

    const/16 v0, 0xd

    .line 254
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    const/16 v0, 0xc

    .line 255
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    const/16 v0, 0xb

    .line 256
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    const/4 v0, 0x6

    .line 257
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    .line 258
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_60

    .line 259
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_60

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_60

    goto :goto_61

    :cond_60
    move v2, v3

    :goto_61
    return v2

    .line 251
    :cond_62
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_2f

    .line 1252
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 1253
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 1254
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_18

    .line 1255
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 1257
    :cond_18
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not iterate based on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1250
    :cond_2f
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Iterator<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_91

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x7

    packed-switch p1, :pswitch_data_96

    .line 1209
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The range style "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1170
    :pswitch_26
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    .line 1172
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 1173
    invoke-virtual {v5, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 1174
    invoke-virtual {v5, v2, v0}, Ljava/util/Calendar;->add(II)V

    const/4 v6, 0x6

    if-ne p1, v6, :cond_3c

    move-object v6, v5

    move-object v5, p0

    goto :goto_66

    :cond_3c
    move v1, v3

    move-object v6, v5

    move-object v5, p0

    :goto_3f
    move p0, v4

    goto :goto_67

    .line 1186
    :pswitch_41
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    .line 1187
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v6

    if-eq p1, v1, :cond_66

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5f

    const/4 v7, 0x4

    if-eq p1, v7, :cond_53

    move v1, v3

    goto :goto_3f

    .line 1201
    :cond_53
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, v1

    .line 1202
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    move v1, p1

    goto :goto_67

    .line 1197
    :cond_5f
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 p0, v1, -0x1

    goto :goto_67

    :cond_66
    :goto_66
    move p0, v3

    :goto_67
    if-ge v1, v3, :cond_6b

    add-int/lit8 v1, v1, 0x7

    :cond_6b
    if-le v1, v4, :cond_6f

    add-int/lit8 v1, v1, -0x7

    :cond_6f
    if-ge p0, v3, :cond_73

    add-int/lit8 p0, p0, 0x7

    :cond_73
    if-le p0, v4, :cond_77

    add-int/lit8 p0, p0, -0x7

    .line 1223
    :cond_77
    :goto_77
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, v1, :cond_81

    .line 1224
    invoke-virtual {v5, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_77

    .line 1226
    :cond_81
    :goto_81
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p0, :cond_8b

    .line 1227
    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_81

    .line 1229
    :cond_8b
    new-instance p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object p0

    .line 1160
    :cond_91
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/Iterator<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 1128
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 1129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1130
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1131
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 963
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x10b07600

    if-gt v4, v5, :cond_14e

    const/16 v4, 0xe

    if-ne v1, v4, :cond_15

    return-void

    .line 977
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 978
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 982
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 983
    sget-object v8, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v8, v2, :cond_29

    const/16 v9, 0x1f4

    if-ge v4, v9, :cond_2b

    :cond_29
    int-to-long v9, v4

    sub-long/2addr v6, v9

    :cond_2b
    const/16 v4, 0xd

    if-ne v1, v4, :cond_31

    move v10, v3

    goto :goto_32

    :cond_31
    const/4 v10, 0x0

    .line 991
    :goto_32
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v11, 0x1e

    if-nez v10, :cond_43

    if-eq v8, v2, :cond_3e

    if-ge v4, v11, :cond_43

    :cond_3e
    int-to-long v12, v4

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v6, v12

    :cond_43
    const/16 v4, 0xc

    if-ne v1, v4, :cond_48

    move v10, v3

    .line 1000
    :cond_48
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-nez v10, :cond_58

    if-eq v8, v2, :cond_52

    if-ge v12, v11, :cond_58

    :cond_52
    int-to-long v10, v12

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    sub-long/2addr v6, v10

    .line 1006
    :cond_58
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v8, v10, v6

    if-eqz v8, :cond_66

    .line 1007
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 1008
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1013
    :cond_66
    sget-object v5, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6b
    if-ge v7, v6, :cond_132

    aget-object v10, v5, v7

    .line 1014
    array-length v11, v10

    const/4 v12, 0x0

    :goto_71
    const/16 v13, 0xf

    const/4 v14, 0x2

    const/16 v15, 0x3e9

    const/4 v4, 0x5

    if-ge v12, v11, :cond_c4

    aget v9, v10, v12

    if-ne v9, v1, :cond_be

    .line 1017
    sget-object v5, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v2, v5, :cond_87

    sget-object v5, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-ne v2, v5, :cond_bd

    if-eqz v8, :cond_bd

    :cond_87
    if-ne v1, v15, :cond_9c

    .line 1022
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_93

    .line 1023
    invoke-virtual {v0, v4, v13}, Ljava/util/Calendar;->add(II)V

    goto :goto_bd

    :cond_93
    const/16 v1, -0xf

    .line 1025
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 1026
    invoke-virtual {v0, v14, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_bd

    :cond_9c
    const/16 v2, 0x9

    if-ne v1, v2, :cond_b7

    const/16 v1, 0xb

    .line 1033
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_ae

    const/16 v2, 0xc

    .line 1034
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_bd

    :cond_ae
    const/16 v2, -0xc

    .line 1036
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1037
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_bd

    :cond_b7
    const/4 v9, 0x0

    .line 1043
    aget v1, v10, v9

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    :cond_bd
    :goto_bd
    return-void

    :cond_be
    const/4 v9, 0x0

    add-int/lit8 v12, v12, 0x1

    const/16 v4, 0xc

    goto :goto_71

    :cond_c4
    const/4 v9, 0x0

    const/16 v11, 0x9

    if-eq v1, v11, :cond_e5

    if-eq v1, v15, :cond_ce

    :cond_cb
    const/16 v9, 0xc

    goto :goto_ff

    .line 1055
    :cond_ce
    aget v11, v10, v9

    if-ne v11, v4, :cond_cb

    .line 1059
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v4, v13, :cond_db

    add-int/lit8 v4, v4, -0xf

    :cond_db
    const/4 v8, 0x7

    if-le v4, v8, :cond_e0

    move v8, v3

    goto :goto_e1

    :cond_e0
    const/4 v8, 0x0

    :goto_e1
    move v11, v4

    const/16 v9, 0xc

    goto :goto_fd

    :cond_e5
    move v4, v9

    .line 1071
    aget v9, v10, v4

    const/16 v4, 0xb

    if-ne v9, v4, :cond_cb

    .line 1074
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v9, 0xc

    if-lt v4, v9, :cond_f6

    add-int/lit8 v4, v4, -0xc

    :cond_f6
    const/4 v8, 0x6

    if-lt v4, v8, :cond_fb

    move v8, v3

    goto :goto_fc

    :cond_fb
    const/4 v8, 0x0

    :goto_fc
    move v11, v4

    :goto_fd
    move v4, v3

    goto :goto_101

    :goto_ff
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_101
    if-nez v4, :cond_120

    const/4 v4, 0x0

    .line 1086
    aget v8, v10, v4

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v8

    .line 1087
    aget v11, v10, v4

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v11

    .line 1089
    aget v12, v10, v4

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v12, v8

    sub-int/2addr v11, v8

    .line 1091
    div-int/2addr v11, v14

    if-le v12, v11, :cond_11d

    move v8, v3

    goto :goto_11e

    :cond_11d
    move v8, v4

    :goto_11e
    move v11, v12

    goto :goto_121

    :cond_120
    const/4 v4, 0x0

    :goto_121
    if-eqz v11, :cond_12d

    .line 1095
    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v0, v10, v12}, Ljava/util/Calendar;->set(II)V

    :cond_12d
    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto/16 :goto_6b

    .line 1098
    :cond_132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_14e
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Calendar value too large for accurate calculations"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 752
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 302
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 322
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p0, :cond_5c

    if-eqz p2, :cond_5c

    .line 370
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-nez p1, :cond_e

    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 372
    :cond_e
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 373
    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 374
    invoke-virtual {v3, p3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 376
    array-length p3, p2

    move v4, v2

    :goto_1d
    if-ge v4, p3, :cond_44

    aget-object v5, p2, v4

    .line 377
    new-instance v6, Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {v6, v5, v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 378
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 380
    :try_start_29
    invoke-virtual {v6, p0, v1, v3}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_3e

    .line 381
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_3d} :catch_3e

    return-object p0

    .line 386
    :catch_3e
    :cond_3e
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 388
    :cond_44
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to parse the date: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 367
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Date and Patterns must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 3

    if-eqz p0, :cond_e

    .line 746
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 747
    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    return-object p0

    .line 744
    :cond_e
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    if-eqz p0, :cond_33

    .line 787
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 788
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 789
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1c

    .line 790
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 792
    :cond_1c
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not round "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 785
    :cond_33
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 708
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 709
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 710
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 711
    sget-object p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 712
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5

    .line 642
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 646
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 647
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 648
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x5

    .line 564
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xb

    .line 580
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xe

    .line 625
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xc

    .line 595
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x2

    .line 549
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xd

    .line 610
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x1

    .line 534
    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2

    .line 661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 662
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 2

    .line 675
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 676
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 3

    if-eqz p0, :cond_e

    .line 839
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 840
    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    return-object p0

    .line 837
    :cond_e
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    if-eqz p0, :cond_33

    .line 864
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 865
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 866
    :cond_d
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1c

    .line 867
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 869
    :cond_1c
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not truncate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 862
    :cond_33
    invoke-static {}, Lorg/apache/commons/lang3/time/DateUtils;->nullDateIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    .line 813
    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    .line 814
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 815
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 816
    sget-object p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    .line 817
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .registers 3

    .line 1763
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    .line 1764
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p1

    .line 1765
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .registers 3

    .line 1783
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    .line 1784
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    .line 1785
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .registers 3

    .line 1728
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .registers 3

    .line 1745
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static validateDateNotNull(Ljava/util/Date;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The date must not be null"

    .line 1789
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
