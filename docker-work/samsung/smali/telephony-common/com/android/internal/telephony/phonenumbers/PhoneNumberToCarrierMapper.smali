.class public Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;
.super Ljava/lang/Object;
.source "PhoneNumberToCarrierMapper.java"


# static fields
.field private static blacklist instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;


# instance fields
.field private final blacklist phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

.field private blacklist prefixFileReader:Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->prefixFileReader:Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;

    .line 37
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->prefixFileReader:Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;
    .registers 3

    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;

    if-nez v1, :cond_10

    .line 54
    new-instance v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;

    const-string v2, "/com/android/internal/telephony/phonenumbers/carrier/data/"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;

    .line 56
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist isMobile(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .registers 2

    .line 120
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, p0, :cond_f

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method


# virtual methods
.method public blacklist getNameForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->isMobile(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->getNameForValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getNameForValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 74
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 78
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->prefixFileReader:Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSafeDisplayName(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isMobileNumberPortableRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, ""

    return-object p0

    .line 113
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberToCarrierMapper;->getNameForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
