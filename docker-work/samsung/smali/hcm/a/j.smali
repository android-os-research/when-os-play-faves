.class public La/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "j"

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/text/SimpleDateFormat;

.field private static d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    invoke-static {}, La/j;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static b()I
    .registers 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized c(I)I
    .registers 7

    const-class v0, La/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/j;->b:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_19

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, La/j;->b:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_19
    sget-object v1, La/j;->b:Ljava/text/SimpleDateFormat;

    int-to-long v2, p0

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    monitor-exit v0

    return p0

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(I)Ljava/lang/String;
    .registers 7

    const-class v0, La/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/j;->c:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_19

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, La/j;->c:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_19
    sget-object v1, La/j;->c:Ljava/text/SimpleDateFormat;

    int-to-long v2, p0

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_72

    :goto_18
    move p0, v0

    goto :goto_66

    :sswitch_1a
    const-string v1, "wed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_18

    :cond_23
    move p0, v2

    goto :goto_66

    :sswitch_25
    const-string v1, "tue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_18

    :cond_2e
    move p0, v3

    goto :goto_66

    :sswitch_30
    const-string v1, "thu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_18

    :cond_39
    move p0, v4

    goto :goto_66

    :sswitch_3b
    const-string v1, "sun"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_18

    :cond_44
    move p0, v5

    goto :goto_66

    :sswitch_46
    const-string v1, "sat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_18

    :cond_4f
    move p0, v6

    goto :goto_66

    :sswitch_51
    const-string v1, "mon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_18

    :cond_5a
    move p0, v7

    goto :goto_66

    :sswitch_5c
    const-string v1, "fri"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto :goto_18

    :cond_65
    const/4 p0, 0x0

    :goto_66
    packed-switch p0, :pswitch_data_90

    return v0

    :pswitch_6a
    return v4

    :pswitch_6b
    return v5

    :pswitch_6c
    return v3

    :pswitch_6d
    return v7

    :pswitch_6e
    const/4 p0, 0x7

    return p0

    :pswitch_70
    return v6

    :pswitch_71
    return v2

    :sswitch_data_72
    .sparse-switch
        0x18d1d -> :sswitch_5c
        0x1a70c -> :sswitch_51
        0x1bbe6 -> :sswitch_46
        0x1be4c -> :sswitch_3b
        0x1c081 -> :sswitch_30
        0x1c204 -> :sswitch_25
        0x1cb56 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_71
        :pswitch_70
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
    .end packed-switch
.end method

.method public static declared-synchronized f(I)Ljava/lang/String;
    .registers 7

    const-class v0, La/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/j;->d:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_1b

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, La/j;->d:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1b
    sget-object v1, La/j;->d:Ljava/text/SimpleDateFormat;

    int-to-long v2, p0

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g()I
    .registers 1

    invoke-static {}, La/j;->i()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public static h(I)I
    .registers 1

    div-int/lit8 p0, p0, 0x3c

    rem-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static i()I
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0}, La/j;->l(Ljava/util/Calendar;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public static j(I)I
    .registers 1

    rem-int/lit16 p0, p0, 0x5a0

    return p0
.end method

.method public static k(I)I
    .registers 2

    div-int/lit8 v0, p0, 0x3c

    rem-int/2addr p0, v0

    return p0
.end method

.method public static l(Ljava/util/Calendar;)I
    .registers 3

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_16

    const p0, 0x36ee80

    add-int/2addr v1, p0

    :cond_16
    div-int/lit8 v1, v1, 0x3c

    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public static m()I
    .registers 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static n()I
    .registers 1

    invoke-static {}, La/j;->i()I

    move-result v0

    add-int/lit16 v0, v0, -0x5a0

    div-int/lit16 v0, v0, 0x5a0

    return v0
.end method
