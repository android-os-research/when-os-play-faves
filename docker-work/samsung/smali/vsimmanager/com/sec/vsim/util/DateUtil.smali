.class public Lcom/sec/vsim/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/sec/vsim/util/DateUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/DateUtil;->LOG_TAG:Ljava/lang/String;

    .line 13
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/DateUtil;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchDateFormat()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    .local v0, "iso8601":Ljava/text/SimpleDateFormat;
    sget-object v1, Lcom/sec/vsim/util/DateUtil;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 47
    return-object v0
.end method

.method public static getTimeStamp()Ljava/lang/String;
    .registers 2

    .line 19
    invoke-static {}, Lcom/sec/vsim/util/DateUtil;->fetchDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStampForTrn()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 55
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v1, Lcom/sec/vsim/util/DateUtil;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .param p0, "iso8601"    # Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/sec/vsim/util/DateUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIso8601Date: ISO8601 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-nez p0, :cond_21

    .line 30
    const-string v1, "parseIso8601Date: input is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 36
    .local v0, "convertedDate":Ljava/util/Date;
    :try_start_22
    invoke-static {}, Lcom/sec/vsim/util/DateUtil;->fetchDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_2a
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_2a} :catch_2c

    move-object v0, v1

    .line 39
    goto :goto_49

    .line 37
    :catch_2c
    move-exception v1

    .line 38
    .local v1, "e":Ljava/text/ParseException;
    sget-object v2, Lcom/sec/vsim/util/DateUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIso8601Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_49
    return-object v0
.end method
