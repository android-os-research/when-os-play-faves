.class public Lcom/samsung/android/server/wifi/util/CountryCodeProperty;
.super Ljava/lang/Object;
.source "CountryCodeProperty.java"


# static fields
.field static final PROP_CSC:Ljava/lang/String; = "ro.csc.countryiso_code"

.field static final PROP_USER_SELECTED:Ljava/lang/String; = "persist.sys.selected_country_iso"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Country"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCountryCodeFromCsc:Ljava/lang/String;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string p1, "ro.csc.countryiso_code"

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mCountryCodeFromCsc:Ljava/lang/String;

    return-void
.end method

.method private getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->isValidCountryCode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 58
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    return-object v1
.end method

.method private isValidCountryCode(Ljava/lang/String;)Z
    .registers 3

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1e

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/server/wifi/util/CountryCodeProperty$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "persist.sys.selected_country_iso"

    .line 43
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "return user selected country iso "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.Country"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 49
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mCountryCodeFromCsc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->mCountryCodeFromCsc:Ljava/lang/String;

    return-object p0

    :cond_36
    return-object p1
.end method
