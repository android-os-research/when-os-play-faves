.class public Lcom/android/internal/telephony/TelephonyFacade;
.super Ljava/lang/Object;
.source "TelephonyFacade.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCountryName(I)Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getElapsedSinceBootMillis()J
    .registers 3

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMainOperatorName(I)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMobileRxBytes()J
    .registers 3

    .line 56
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileTxBytes()J
    .registers 3

    .line 49
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOperatorType(I)Ljava/lang/String;
    .registers 2

    .line 74
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSalesCode()Ljava/lang/String;
    .registers 1

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSettingsGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 94
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getSimOperatorNumericForPhone(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 98
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubOperatorName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 106
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 110
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemPropertyBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 114
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 82
    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 78
    invoke-static {p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTelephonyPropertyFromDefault(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs blacklist isCountrySpecific(I[Ljava/lang/String;)Z
    .registers 3

    .line 62
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 118
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
