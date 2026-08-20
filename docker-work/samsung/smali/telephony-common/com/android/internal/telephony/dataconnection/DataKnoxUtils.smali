.class public final Lcom/android/internal/telephony/dataconnection/DataKnoxUtils;
.super Ljava/lang/Object;
.source "DataKnoxUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getApplicationRestrictionsManager(Landroid/content/Context;)Landroid/sec/enterprise/ApplicationRestrictionsManager;
    .registers 1

    if-eqz p0, :cond_d

    .line 52
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 54
    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .registers 1

    if-eqz p0, :cond_d

    .line 31
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 33
    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getRoamingPolicy(Landroid/content/Context;)Landroid/sec/enterprise/RoamingPolicy;
    .registers 1

    if-eqz p0, :cond_d

    .line 41
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 43
    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist isDataAllowedFromKnox(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/Phone;)Z
    .registers 8

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataKnoxUtils;->getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataKnoxUtils;->getApplicationRestrictionsManager(Landroid/content/Context;)Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_84

    if-nez v1, :cond_17

    goto/16 :goto_84

    :cond_17
    const-string v3, "com.samsung.android.app.telephonyui"

    const/4 v4, 0x0

    .line 70
    invoke-virtual {v1, v3, v4}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "default"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 72
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_36

    :goto_34
    move v2, v4

    goto :goto_5b

    :cond_36
    if-eqz v1, :cond_5b

    .line 74
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "telephonyui_simcard_manager_data_preference"

    .line 75
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 77
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 79
    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataKnoxUtils;->isTheSameWithSlotId(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_34

    .line 85
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_82

    if-nez v2, :cond_82

    goto :goto_83

    :cond_82
    move v4, v2

    :cond_83
    :goto_83
    return v4

    :cond_84
    :goto_84
    return v2
.end method

.method public static blacklist isDataRoamingEnabledFromKnox(Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataKnoxUtils;->getRoamingPolicy(Landroid/content/Context;)Landroid/sec/enterprise/RoamingPolicy;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 108
    invoke-virtual {p0}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result p0

    if-nez p0, :cond_19

    const-string p0, "DataKnoxUtils"

    const-string v0, "isDataRoamingEnabledFromKnox : false"

    .line 109
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isTheSameWithSlotId(ILjava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
