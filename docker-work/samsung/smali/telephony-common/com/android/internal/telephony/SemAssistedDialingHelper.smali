.class public final Lcom/android/internal/telephony/SemAssistedDialingHelper;
.super Ljava/lang/Object;
.source "SemAssistedDialingHelper.java"


# static fields
.field private static final blacklist MCC_OTA_URI:Landroid/net/Uri;

.field private static final blacklist OTA_COUNTRY_URI:Landroid/net/Uri;

.field private static final blacklist REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;


# instance fields
.field private blacklist mCursor:Landroid/database/Cursor;

.field private blacklist mCursorCountry:Landroid/database/Cursor;

.field private blacklist mIsAssistedDialingNumber:Z

.field private blacklist mIsCDMARegistered:Z

.field private blacklist mIsGSMRegistered:Z

.field private blacklist mIsNANPCountry:Z

.field private blacklist mIsNetRoaming:Z

.field private blacklist mIsOtaNanpCountry:Z

.field private blacklist mNumberLength:I

.field private blacklist mOtaCountryCountryCode:Ljava/lang/String;

.field private blacklist mOtaCountryIDDPrefix:Ljava/lang/String;

.field private blacklist mOtaCountryMCC:Ljava/lang/String;

.field private blacklist mOtaCountryNDDPrefix:Ljava/lang/String;

.field private blacklist mOtaCountryName:Ljava/lang/String;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRefCountryAreaCode:Ljava/lang/String;

.field private blacklist mRefCountryCountryCode:Ljava/lang/String;

.field private blacklist mRefCountryIDDPrefix:Ljava/lang/String;

.field private blacklist mRefCountryMCC:Ljava/lang/String;

.field private blacklist mRefCountryNDDPrefix:Ljava/lang/String;

.field private blacklist mRefCountryName:Ljava/lang/String;

.field private blacklist mRefCountryNationalNumberLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const-string v0, "content://assisteddialing/refcountry"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const-string v0, "content://assisteddialing/mcc_otalookup"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const-string v0, "content://assisteddialing/ota_country"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->OTA_COUNTRY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNANPCountry:Z

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist displayAssistedDialingParams()V
    .registers 3

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRefCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mRefCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryAreaCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryNationalNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsNANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRefCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGSMRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCDMARegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsNetRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mOtaCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsOtaNanpCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOtaCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getNetworkCountryIso()Ljava/lang/String;
    .registers 1

    .line 884
    iget-object p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-nez p0, :cond_13

    const-string p0, ""

    return-object p0

    .line 889
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getOtaCountry(IZ)Landroid/database/Cursor;
    .registers 10

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "otaCountryMccKey"

    const/4 v2, 0x0

    .line 868
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    iget-object p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_31

    if-nez v0, :cond_20

    goto :goto_31

    .line 876
    :cond_20
    sget-object v2, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object v0, v5, p0

    const/4 v6, 0x0

    const-string v4, "mcc=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_4b

    .line 874
    :cond_31
    :goto_31
    sget-object p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->OTA_COUNTRY_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_4b
    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistedDialing"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist overrideAssistedDialingParamsForTest()V
    .registers 14

    .line 594
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_116

    iget-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_116

    .line 598
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->getAssistedDialingTestData()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    const-string v1, ":"

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 602
    :goto_2e
    array-length v3, v0

    if-ge v2, v3, :cond_52

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssistedDialing test parameter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 606
    :cond_52
    array-length v2, v0

    if-lez v2, :cond_116

    .line 607
    aget-object v2, v0, v1

    const-string v3, "gsm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 608
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 610
    array-length v2, v0

    if-le v2, v3, :cond_113

    .line 611
    aget-object v2, v0, v3

    const-string v4, "roam"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    .line 613
    array-length v2, v0

    const/4 v4, 0x2

    if-le v2, v4, :cond_113

    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 616
    aget-object v2, v0, v4

    const-string v11, "310"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v12, "310 to 316"

    if-eqz v2, :cond_99

    .line 617
    sget-object v6, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v8, "mcc=?"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_a9

    .line 619
    :cond_99
    sget-object v6, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-array v9, v3, [Ljava/lang/String;

    aget-object v0, v0, v4

    aput-object v0, v9, v1

    const/4 v10, 0x0

    const-string v8, "mcc=?"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_a9
    const/4 v1, 0x0

    .line 622
    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    if-nez v0, :cond_b4

    const-string v1, "overrideAssistedDialingParamsForTest - cursor is null"

    .line 624
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    goto :goto_10e

    .line 625
    :cond_b4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_c0

    const-string v1, "overrideAssistedDialingParamsForTest - cursor is empty"

    .line 626
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    goto :goto_10e

    .line 628
    :cond_c0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    .line 629
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    const/4 v1, 0x3

    .line 631
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    const/4 v1, 0x4

    .line 632
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_e0

    const-string v1, ""

    .line 634
    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    :cond_e0
    const/4 v1, 0x5

    .line 637
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    const/4 v1, 0x6

    .line 638
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    goto :goto_10c

    :cond_fd
    iget-object v1, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    const-string v11, "430"

    goto :goto_10c

    :cond_10a
    iget-object v11, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    :goto_10c
    iput-object v11, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    :goto_10e
    if-eqz v0, :cond_113

    .line 643
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_113
    invoke-direct {p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->displayAssistedDialingParams()V

    :cond_116
    :goto_116
    return-void
.end method

.method private blacklist retrieveAssistedParams(ILjava/lang/String;)Z
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "NANP"

    const-string v2, "310 to 316"

    .line 468
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LRA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    const-string v0, "Assisted dial not supported"

    .line 469
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    return v4

    .line 473
    :cond_1f
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    .line 474
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    .line 476
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fd

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4a

    goto/16 :goto_1fd

    .line 484
    :cond_4a
    :try_start_4a
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 485
    sget-object v8, Lcom/android/internal/telephony/SemAssistedDialingHelper;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_6f

    const-string v0, "Invalid Reference Country"

    .line 487
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_1f4

    .line 530
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6e

    .line 531
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6e
    return v4

    .line 491
    :cond_6f
    :try_start_6f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 494
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryName:Ljava/lang/String;

    .line 495
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 496
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_1f4

    const-string v10, "430"

    const-string v11, "310"

    const-string v12, "430 to 431"

    if-eqz v9, :cond_90

    move-object v5, v11

    goto :goto_97

    :cond_90
    :try_start_90
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    move-object v5, v10

    :cond_97
    :goto_97
    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    .line 497
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 498
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    .line 499
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    move v5, v7

    goto :goto_ba

    :cond_b9
    move v5, v4

    :goto_ba
    iput-boolean v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNANPCountry:Z

    .line 500
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x6

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    .line 502
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/16 v15, 0x8

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    if-nez v5, :cond_e7

    .line 504
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_de

    .line 505
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    goto :goto_e7

    :cond_de
    const-string v5, "Wrong MDN. Use default reference country area code"

    .line 507
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const-string v5, "123"

    .line 508
    iput-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    .line 512
    :cond_e7
    :goto_e7
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/16 v15, 0x9

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 513
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v15, v6, :cond_fc

    .line 514
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    iput v15, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    goto :goto_100

    :cond_fc
    const/16 v15, 0xa

    .line 516
    iput v15, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    .line 518
    :goto_100
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRefCountryNationalNumberLength - MDN length: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DB: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 520
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_124
    .catchall {:try_start_90 .. :try_end_124} :catchall_1f4

    if-nez v3, :cond_132

    .line 522
    :try_start_126
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I
    :try_end_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_126 .. :try_end_12c} :catch_12d
    .catchall {:try_start_126 .. :try_end_12c} :catchall_1f4

    goto :goto_132

    :catch_12d
    :try_start_12d
    const-string v3, "Can\'t parse the NationalNumberLength as integer"

    .line 524
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 528
    :cond_132
    :goto_132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRefCountryMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryMCC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_12d .. :try_end_148} :catchall_1f4

    .line 530
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_14f

    .line 531
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_14f
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_159

    move v3, v7

    goto :goto_15a

    :cond_159
    const/4 v3, 0x0

    :goto_15a
    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    .line 535
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_166

    move v3, v7

    goto :goto_167

    :cond_166
    const/4 v3, 0x0

    :goto_167
    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    move/from16 v3, p1

    .line 537
    :try_start_16b
    invoke-direct {v1, v3, v7}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getOtaCountry(IZ)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    .line 539
    iput-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    if-eqz v3, :cond_1d2

    .line 540
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 541
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryName:Ljava/lang/String;

    .line 542
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    .line 544
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 545
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    if-nez v3, :cond_1a2

    const-string v3, ""

    .line 547
    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    .line 550
    :cond_1a2
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    move v0, v7

    goto :goto_1b1

    :cond_1b0
    const/4 v0, 0x0

    :goto_1b1
    iput-boolean v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    .line 551
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    .line 552
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    move-object v10, v11

    goto :goto_1d0

    :cond_1c5
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    goto :goto_1d0

    :cond_1ce
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    :goto_1d0
    iput-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;
    :try_end_1d2
    .catchall {:try_start_16b .. :try_end_1d2} :catchall_1eb

    .line 555
    :cond_1d2
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1d9

    .line 556
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 560
    :cond_1d9
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryMCC:Ljava/lang/String;

    if-nez v0, :cond_1e4

    const-string v0, "OTA country not found"

    .line 561
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    :goto_1e2
    const/4 v0, 0x0

    return v0

    .line 565
    :cond_1e4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->displayAssistedDialingParams()V

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->overrideAssistedDialingParamsForTest()V

    return v7

    :catchall_1eb
    move-exception v0

    .line 555
    iget-object v1, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1f3

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_1f3
    throw v0

    :catchall_1f4
    move-exception v0

    .line 530
    iget-object v1, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1fc

    .line 531
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_1fc
    throw v0

    :cond_1fd
    :goto_1fd
    const-string v0, "Wrong MDN"

    .line 479
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    goto :goto_1e2
.end method


# virtual methods
.method public blacklist assistedDialFromContactList(Ljava/lang/String;)Ljava/lang/String;
    .registers 25

    move-object/from16 v1, p0

    const-string v2, "011"

    const/4 v3, 0x0

    .line 78
    :try_start_5
    iget-object v4, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called assistedDialFromContactList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_750

    .line 81
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto/16 :goto_750

    .line 86
    :cond_35
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_754

    .line 87
    :try_start_39
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 90
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v7

    const/16 v8, 0x2b

    if-nez v7, :cond_63

    if-ne v6, v8, :cond_4c

    goto :goto_63

    .line 93
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 94
    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    .line 91
    :cond_63
    :goto_63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 98
    invoke-direct {v1, v4, v5}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->retrieveAssistedParams(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    const-string v2, "retrieveAssistedParams fail. Returning original number"

    .line 99
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 100
    iput-boolean v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    .line 105
    :cond_85
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 108
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 109
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a0

    const/4 v9, 0x1

    goto :goto_a1

    :cond_a0
    move v9, v3

    .line 110
    :goto_a1
    iget-object v11, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 111
    iget-object v12, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 116
    iget-boolean v14, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 117
    iget-boolean v15, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    if-eqz v15, :cond_112

    .line 121
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v8

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 123
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    move/from16 v16, v14

    const-string v14, "us"

    .line 125
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e1

    const-string v14, "vi"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    :cond_e1
    const/16 v3, 0xd

    if-eq v8, v3, :cond_f1

    const/16 v3, 0x13

    if-eq v8, v3, :cond_f1

    const/16 v3, 0x14

    if-eq v8, v3, :cond_f1

    const/16 v3, 0x12

    if-ne v8, v3, :cond_f5

    :cond_f1
    if-nez v10, :cond_f5

    const/4 v3, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v3, 0x0

    :goto_f6
    if-eqz v3, :cond_10f

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Use CDMA policy. forceVzwHomePolicy: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_115

    :cond_10f
    move/from16 v14, v16

    goto :goto_115

    :cond_112
    move/from16 v16, v14

    const/4 v3, 0x0

    :goto_115
    if-eqz v14, :cond_619

    .line 143
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    const/16 v10, 0x31

    const/16 v14, 0xb

    if-eqz v8, :cond_4a9

    .line 144
    iget-boolean v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    if-eqz v8, :cond_329

    iget-boolean v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    if-nez v8, :cond_329

    if-eqz v3, :cond_12d

    goto/16 :goto_329

    .line 226
    :cond_12d
    iget v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    if-gt v2, v8, :cond_1f1

    if-ne v2, v8, :cond_18c

    .line 228
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_170

    .line 230
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing2-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 234
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 237
    :cond_170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing2-3] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 238
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    .line 242
    :cond_18c
    iget-object v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    if-ne v2, v8, :cond_1f1

    .line 243
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    .line 245
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing3-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 250
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 251
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    :cond_1d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing3-3] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 254
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    :cond_1f1
    if-nez v7, :cond_277

    if-eqz v11, :cond_1f7

    goto/16 :goto_277

    :cond_1f7
    if-nez v6, :cond_1fb

    if-eqz v12, :cond_4a9

    .line 294
    :cond_1fb
    iget v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    iget-object v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    .line 295
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v2, v8, :cond_4a9

    .line 296
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25b

    if-eqz v6, :cond_217

    .line 299
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    goto :goto_219

    .line 301
    :cond_217
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    .line 305
    :goto_219
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing7-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 309
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 310
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 312
    :cond_25b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing7-3] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 313
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    :cond_277
    :goto_277
    if-eqz v7, :cond_288

    .line 263
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 264
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_296

    .line 266
    :cond_288
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 271
    :goto_296
    iget-object v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d6

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing6-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 276
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2d6
    if-eqz v7, :cond_30b

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing6-4] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 284
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_30b
    if-eqz v11, :cond_4a9

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing6-5] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 289
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    :cond_329
    :goto_329
    if-eqz v9, :cond_430

    .line 146
    iget v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    if-lt v8, v14, :cond_430

    if-eq v13, v10, :cond_430

    .line 152
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 154
    sget-object v3, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    .line 156
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    .line 157
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    .line 159
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_3cc

    if-eqz v3, :cond_3cc

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 162
    :goto_36d
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3c1

    .line 163
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    :goto_37a
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3b8

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b2

    .line 166
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v6, v3

    const/4 v3, 0x1

    goto :goto_3b8

    .line 170
    :cond_3b2
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_37a

    :cond_3b8
    :goto_3b8
    if-eqz v3, :cond_3bb

    goto :goto_3c1

    .line 176
    :cond_3bb
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_36d

    .line 178
    :cond_3c1
    :goto_3c1
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3d9

    :cond_3cc
    if-eqz v6, :cond_3d2

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3d7

    :cond_3d2
    if-eqz v3, :cond_3d7

    .line 185
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3d7
    :goto_3d7
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_3d9
    if-nez v3, :cond_405

    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing1-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 194
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 199
    :cond_405
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 200
    invoke-virtual {v4, v3, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing1-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 202
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :cond_430
    iget v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    iget-object v11, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    if-ne v8, v9, :cond_479

    if-eqz v6, :cond_45b

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing4-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 207
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    :cond_45b
    if-eqz v12, :cond_479

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing4-4] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 212
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    :cond_479
    if-eqz v7, :cond_4a9

    const-string v8, "1"

    .line 217
    iget-object v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a9

    .line 218
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a9

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing5-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 220
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    :cond_4a9
    const/16 v2, 0x2b

    if-ne v13, v2, :cond_619

    .line 322
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 323
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 325
    iget-boolean v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    if-eqz v9, :cond_52b

    iget-boolean v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    if-nez v9, :cond_52b

    if-nez v3, :cond_52b

    if-eqz v8, :cond_4fd

    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing8-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 334
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 335
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 337
    :cond_4fd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing8-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 342
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 343
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 347
    :cond_52b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v14, :cond_619

    .line 348
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v14, :cond_55a

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_55a

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing9-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 352
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    .line 356
    :cond_55a
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 358
    sget-object v18, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_579

    .line 360
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 365
    :cond_579
    :goto_579
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_598

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_598

    .line 366
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_592

    const/4 v3, 0x1

    goto :goto_599

    .line 370
    :cond_592
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_579

    :cond_598
    const/4 v3, 0x0

    :goto_599
    if-nez v3, :cond_5d2

    .line 374
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5a2

    .line 375
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_5a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number does not start with Country Code, match: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing9-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 379
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5

    .line 381
    :cond_5d2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    if-ne v2, v3, :cond_619

    .line 384
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing9-3] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 388
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 389
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_619
    if-eqz v15, :cond_732

    .line 398
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2
    :try_end_61f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_61f} :catch_74e

    const-string v3, "+"

    if-eqz v2, :cond_717

    .line 399
    :try_start_623
    iget v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    iget v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNationalNumberLength:I

    if-gt v2, v8, :cond_697

    if-ne v2, v8, :cond_65a

    .line 402
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing10-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 406
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 407
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 409
    :cond_65a
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v8, v6

    if-ne v2, v8, :cond_732

    .line 411
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing10-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 416
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_697
    if-eqz v7, :cond_6ca

    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing11-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 425
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6ca
    if-eqz v6, :cond_732

    .line 428
    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v8, v6

    if-ne v2, v8, :cond_732

    .line 430
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing11-2] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 434
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 435
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_717
    const-string v2, "+011"

    .line 438
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_732

    .line 439
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 440
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 441
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 447
    :cond_732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialing13-1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 448
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_74d
    .catch Ljava/lang/Exception; {:try_start_623 .. :try_end_74d} :catch_74e

    return-object v5

    :catch_74e
    move-exception v0

    goto :goto_757

    :cond_750
    :goto_750
    move v2, v3

    .line 82
    :try_start_751
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_753
    .catch Ljava/lang/Exception; {:try_start_751 .. :try_end_753} :catch_754

    return-object p1

    :catch_754
    move-exception v0

    move-object/from16 v5, p1

    :goto_757
    move-object v2, v0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot assist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 462
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v5
.end method

.method public blacklist assistedDialFromDialPad(Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "011"

    const/4 v2, 0x0

    .line 655
    :try_start_5
    iget-object v3, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called assistedDialFromDialPad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3df

    .line 658
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto/16 :goto_3df

    .line 663
    :cond_35
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_3e2

    .line 664
    :try_start_39
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 667
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v6

    const/16 v7, 0x2b

    if-nez v6, :cond_63

    if-ne v5, v7, :cond_4c

    goto :goto_63

    .line 670
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 671
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v4

    .line 668
    :cond_63
    :goto_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 675
    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->retrieveAssistedParams(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string v0, "retrieveAssistedParams fail. Returning original number"

    .line 676
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 677
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v4

    .line 682
    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 684
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_dialing"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a1

    move v5, v6

    goto :goto_a2

    :cond_a1
    move v5, v2

    :goto_a2
    if-eqz v5, :cond_ae

    .line 685
    iget-object v8, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    move v8, v6

    goto :goto_af

    :cond_ae
    move v8, v2

    .line 686
    :goto_af
    iget-object v9, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 688
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", numberBeginsWithRefCountryIDDPrefixWithAdEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 692
    iget-boolean v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsCDMARegistered:Z

    .line 693
    iget-boolean v11, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsGSMRegistered:Z

    if-eqz v11, :cond_135

    .line 697
    iget-object v12, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v12

    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v13

    .line 699
    iget-object v14, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    const-string v15, "us"

    .line 701
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_107

    const-string v15, "vi"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11b

    :cond_107
    const/16 v13, 0xd

    if-eq v12, v13, :cond_117

    const/16 v13, 0x13

    if-eq v12, v13, :cond_117

    const/16 v13, 0x14

    if-eq v12, v13, :cond_117

    const/16 v13, 0x12

    if-ne v12, v13, :cond_11b

    :cond_117
    if-nez v14, :cond_11b

    move v12, v6

    goto :goto_11c

    :cond_11b
    move v12, v2

    :goto_11c
    if-eqz v12, :cond_136

    .line 711
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use CDMA policy. forceVzwHomePolicy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    move v11, v2

    move v10, v6

    goto :goto_136

    :cond_135
    move v12, v2

    :cond_136
    :goto_136
    if-eqz v10, :cond_2af

    .line 718
    iget-boolean v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsNetRoaming:Z

    const/16 v13, 0x31

    const/16 v14, 0xb

    if-eqz v10, :cond_26b

    iget-boolean v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsOtaNanpCountry:Z

    if-nez v10, :cond_26b

    if-eqz v12, :cond_148

    goto/16 :goto_26b

    .line 733
    :cond_148
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 734
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v10

    if-nez v10, :cond_154

    if-ne v0, v7, :cond_2af

    .line 735
    :cond_154
    iget v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    if-lt v10, v14, :cond_2af

    if-ne v10, v14, :cond_15c

    if-eq v0, v13, :cond_2af

    :cond_15c
    const/4 v10, 0x0

    if-nez v8, :cond_164

    if-eqz v9, :cond_162

    goto :goto_164

    :cond_162
    move-object v12, v10

    goto :goto_188

    :cond_164
    :goto_164
    if-eqz v8, :cond_175

    .line 739
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    .line 740
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_183

    .line 742
    :cond_175
    iget-object v10, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    .line 743
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :goto_183
    move-object/from16 v16, v12

    move-object v12, v10

    move-object/from16 v10, v16

    :goto_188
    if-ne v0, v7, :cond_1f7

    .line 748
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 749
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 752
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingB-2] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 755
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 756
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 759
    :cond_1cc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingB-3] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 762
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 763
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f7
    if-nez v8, :cond_1fb

    if-eqz v9, :cond_2af

    .line 766
    :cond_1fb
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 769
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingC-2] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    if-eqz v9, :cond_237

    .line 773
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    goto :goto_239

    .line 775
    :cond_237
    iput-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 777
    :goto_239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23e
    if-eqz v8, :cond_2af

    .line 780
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingC-3] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 783
    iput-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 784
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 720
    :cond_26b
    :goto_26b
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_273

    move v7, v6

    goto :goto_274

    :cond_273
    move v7, v2

    .line 721
    :goto_274
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 722
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-eqz v12, :cond_2af

    if-eqz v7, :cond_2af

    .line 723
    iget v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mNumberLength:I

    if-lt v7, v14, :cond_2af

    if-eq v10, v13, :cond_2af

    .line 724
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AssistDialingA-1] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 727
    iput-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 728
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_2ae} :catch_3dd

    return-object v0

    :cond_2af
    if-eqz v11, :cond_3c2

    const-string v0, "+"

    if-eqz v8, :cond_2e4

    .line 796
    :try_start_2b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mRefCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iput-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert reference country IDD prefix to +: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e4
    if-eqz v5, :cond_31c

    const-string v5, "+011"

    .line 801
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31c

    .line 802
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    .line 803
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iput-boolean v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert +011 prefix to +: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31c
    if-eqz v9, :cond_3c2

    .line 808
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 812
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c2

    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c2

    .line 813
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 815
    sget-object v9, Lcom/android/internal/telephony/SemAssistedDialingHelper;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_355

    .line 817
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 820
    :cond_355
    :goto_355
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x6

    if-eqz v7, :cond_373

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_373

    .line 821
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36d

    goto :goto_374

    .line 825
    :cond_36d
    iget-object v7, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_355

    :cond_373
    move v6, v2

    :goto_374
    if-eqz v6, :cond_3bb

    .line 829
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v5, v8, :cond_3bb

    .line 830
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v5, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mOtaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert local IDD prefix to +: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 836
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    .line 837
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 840
    :cond_3bb
    iget-object v0, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3c2

    .line 841
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 848
    :cond_3c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AssistDialingD-1] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 851
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_3dc} :catch_3dd

    return-object v4

    :catch_3dd
    move-exception v0

    goto :goto_3e5

    .line 659
    :cond_3df
    :goto_3df
    :try_start_3df
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z
    :try_end_3e1
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_3e1} :catch_3e2

    return-object p1

    :catch_3e2
    move-exception v0

    move-object/from16 v4, p1

    .line 855
    :goto_3e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot assist: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->log(Ljava/lang/String;)V

    .line 856
    iput-boolean v2, v1, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return-object v4
.end method

.method public blacklist getIsAssistedDialingNumber()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemAssistedDialingHelper;->mIsAssistedDialingNumber:Z

    return p0
.end method
