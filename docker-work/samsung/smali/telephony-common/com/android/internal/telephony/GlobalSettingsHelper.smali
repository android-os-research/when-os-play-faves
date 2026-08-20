.class public Lcom/android/internal/telephony/GlobalSettingsHelper;
.super Ljava/lang/Object;
.source "GlobalSettingsHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public static blacklist getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 4

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public static blacklist getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .registers 4

    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static blacklist getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 97
    invoke-static {p1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->noSubIdUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 101
    :cond_7
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_28

    .line 102
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    return-object p1
.end method

.method public static blacklist isSupportDualDataRoam()Z
    .registers 6

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2f

    .line 124
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v3, "CarrierFeature_VoiceCall_ConfigOpStyleForNetworkSetting"

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SupportDualDataRoam"

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2e
    return v1

    :cond_2f
    return v2
.end method

.method private static blacklist noSubIdUsed(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "mobile_data"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "data_roaming"

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/GlobalSettingsHelper;->isSupportDualDataRoam()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 4

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static blacklist setInt(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 5

    .line 73
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getSettingName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 77
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_d} :catch_11

    if-eq v0, p3, :cond_10

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :catch_11
    :goto_11
    if-eqz p2, :cond_1a

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1a
    return p2
.end method
