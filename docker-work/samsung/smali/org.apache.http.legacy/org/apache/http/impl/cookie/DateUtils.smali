.class public final Lorg/apache/http/impl/cookie/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 75
    const-string v0, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 83
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 87
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 89
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 90
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 91
    .end local v8    # "calendar":Ljava/util/Calendar;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "date"    # Ljava/util/Date;

    .line 185
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {p0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 202
    if-eqz p0, :cond_15

    .line 203
    if-eqz p1, :cond_d

    .line 205
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 206
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .param p0, "dateValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 8
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .param p2, "startDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    .line 143
    if-eqz p0, :cond_57

    .line 146
    if-nez p1, :cond_6

    .line 147
    sget-object p1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 149
    :cond_6
    if-nez p2, :cond_a

    .line 150
    sget-object p2, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 154
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    .line 155
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 161
    :cond_28
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_3e

    aget-object v2, p1, v1

    .line 162
    .local v2, "dateFormat":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    .line 163
    .local v3, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 166
    :try_start_35
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_39
    .catch Ljava/text/ParseException; {:try_start_35 .. :try_end_39} :catch_3a

    return-object v0

    .line 167
    :catch_3a
    move-exception v4

    .line 161
    .end local v2    # "dateFormat":Ljava/lang/String;
    .end local v3    # "dateParser":Ljava/text/SimpleDateFormat;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 173
    :cond_3e
    new-instance v0, Lorg/apache/http/impl/cookie/DateParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse the date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/DateParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateValue is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
