.class Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;
.super Ljava/lang/Object;
.source "WifiB2bPolicyParser.java"


# static fields
.field private static final ERRS_NETWORK_NAME:I = 0x40f

.field private static final ERRS_NO_DHCP_RENEW:I = 0x100

.field private static final ERRS_ROAM_BAND:I = 0x381

.field private static final ERRS_ROAM_DELTA:I = 0x121

.field private static final ERRS_ROAM_SCAN_PERIOD:I = 0x141

.field private static final ERRS_ROAM_TRIGGER:I = 0x111

.field static final ERR_DUPLICATED_NETWORK_CONF:I = 0x8

.field static final ERR_EXCEED_MAX_COUNT:I = 0x1

.field static final ERR_EXCEED_NETWORK_LEN_MAX:I = 0x4

.field static final ERR_INVALID_ROAM_BAND:I = 0x80

.field static final ERR_INVALID_ROAM_DELTA:I = 0x20

.field static final ERR_INVALID_ROAM_SCAN_PERIOD:I = 0x40

.field static final ERR_INVALID_ROAM_TRIGGER:I = 0x10

.field static final ERR_NONE:I = 0x0

.field static final ERR_NOT_SUPPORTED_TYPE:I = 0x100

.field static final ERR_NO_DRIVER_SUPPORT_FOR_NCHO:I = 0x400

.field static final ERR_NO_DRIVER_SUPPORT_FOR_ROAMBAND:I = 0x200

.field static final ERR_NO_SSID_INFO:I = 0x2

.field static final KEY_DISABLE_CONNECTIVITY_CHECK:Ljava/lang/String; = "disable_connectivity_check"

.field static final KEY_NO_CONN_BLOCKLIST:Ljava/lang/String; = "noNetworkDisable"

.field static final KEY_POLICY:Ljava/lang/String; = "wificonfiguration"

.field static final KEY_ROAM_BAND:Ljava/lang/String; = "roamBand"

.field static final KEY_ROAM_DELTA:Ljava/lang/String; = "roamdelta"

.field static final KEY_ROAM_NO_DHCP_RENEWAL:Ljava/lang/String; = "nodhcprenewal"

.field static final KEY_ROAM_SCAN_PERIOD:Ljava/lang/String; = "roamscanperiod"

.field static final KEY_ROAM_SSID:Ljava/lang/String; = "networkname"

.field static final KEY_ROAM_TRIGGER:Ljava/lang/String; = "roamtrigger"

.field static final MAX_B2B_POLICY_COUNT:I = 0x5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiB2BPolicy"


# instance fields
.field private b2bPolicies:[Landroid/os/Parcelable;

.field private isConnectivityCheckDisabled:Z

.field private final mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private final supportedBands:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDriverSupportedBands()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->supportedBands:I

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    return-void
.end method

.method private checkValidity(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)I
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getIsNchoSupportedByDriver()Z

    move-result v0

    const-string v1, "SemWifiB2BPolicy"

    if-nez v0, :cond_21

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidity No Driver support for NCHO mode, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x400

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 190
    :goto_22
    iget-boolean v2, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDhcpInRoam:Z

    if-eqz v2, :cond_3c

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidity disable dhcp renew after roam not supported, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 v0, v0, 0x100

    .line 194
    :cond_3c
    iget-object v2, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidity No SSID, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x2

    goto :goto_77

    .line 197
    :cond_5b
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidNetworkName()Z

    move-result v2

    if-nez v2, :cond_77

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidity SSID length is too long, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x4

    .line 201
    :cond_77
    :goto_77
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamTriggerSetting()Z

    move-result v2

    if-nez v2, :cond_93

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidity Wrong Roam Trigger, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x10

    .line 205
    :cond_93
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamDeltaSetting()Z

    move-result v2

    if-nez v2, :cond_af

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidity Wrong Roam Delta, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x20

    .line 209
    :cond_af
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamScanPeriodSetting()Z

    move-result v2

    if-nez v2, :cond_cb

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidity Wrong Roam Scan Period, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x40

    .line 213
    :cond_cb
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamBandSetting()Z

    move-result v2

    if-nez v2, :cond_e8

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidity Wrong Roam Band, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 v0, v0, 0x80

    goto :goto_12b

    .line 216
    :cond_e8
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isRoamBandSetToDefault()Z

    move-result v2

    if-nez v2, :cond_10d

    iget-object v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getIsRoamBandSupportedByDriver()Z

    move-result v2

    if-nez v2, :cond_10d

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No driver support for roam band, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 v0, v0, 0x200

    goto :goto_12b

    .line 219
    :cond_10d
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->supportedBands:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isSupportedRoamBandSetting(I)Z

    move-result p0

    if-nez p0, :cond_12b

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidity Unsupported Roam Band, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 v0, v0, 0x100

    :cond_12b
    :goto_12b
    return v0
.end method

.method private parseConnectivityCheckPolicy(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "disable_connectivity_check"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2d

    const-string v0, "value"

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received connectivity check policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiB2BPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->isConnectivityCheckDisabled:Z

    goto :goto_30

    :cond_2d
    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->isConnectivityCheckDisabled:Z

    :goto_30
    return-void
.end method

.method private parseNetworkPolicy()Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_b
    if-ge v4, v2, :cond_79

    aget-object v6, v1, v4

    .line 106
    instance-of v7, v6, Landroid/os/Bundle;

    if-nez v7, :cond_14

    goto :goto_76

    .line 107
    :cond_14
    check-cast v6, Landroid/os/Bundle;

    .line 108
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parseWifiPolicy(Landroid/os/Bundle;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    move-result-object v7

    .line 110
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "SemWifiB2BPolicy"

    if-eqz v8, :cond_39

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skip duplicated policy "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x8

    goto :goto_3a

    :cond_39
    move v8, v3

    :goto_3a
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x5

    if-le v5, v10, :cond_55

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skip (exceed max count) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v8, v8, 0x1

    .line 118
    :cond_55
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->checkValidity(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)I

    move-result v10

    or-int/2addr v8, v10

    if-nez v8, :cond_73

    .line 120
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_73
    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->writeFeedbackValues(ILandroid/os/Bundle;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    :goto_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_79
    return-object v0
.end method

.method private parseWifiPolicy(Landroid/os/Bundle;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;
    .registers 4

    const-string p0, "networkname"

    .line 148
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, ""

    .line 152
    :cond_e
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;-><init>(Ljava/lang/String;)V

    const-string p0, "roamtrigger"

    const v1, 0x7fffffff

    .line 153
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    const-string p0, "roamdelta"

    .line 154
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    const-string p0, "roamscanperiod"

    .line 155
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    const-string p0, "roamBand"

    .line 156
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    const-string p0, "nodhcprenewal"

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDhcpInRoam:Z

    const-string p0, "noNetworkDisable"

    .line 158
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDisable:Z

    return-object v0
.end method

.method private writeFeedbackValues(ILandroid/os/Bundle;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .registers 5

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p1, 0x40f

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "networkname"

    .line 163
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamTriggerSetting()Z

    move-result p0

    if-eqz p0, :cond_29

    and-int/lit16 p0, p1, 0x111

    const-string v0, "roamtrigger"

    .line 166
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :cond_29
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamDeltaSetting()Z

    move-result p0

    if-eqz p0, :cond_36

    and-int/lit16 p0, p1, 0x121

    const-string v0, "roamdelta"

    .line 169
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    :cond_36
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamScanPeriodSetting()Z

    move-result p0

    if-eqz p0, :cond_43

    and-int/lit16 p0, p1, 0x141

    const-string v0, "roamscanperiod"

    .line 172
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    :cond_43
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamBandSetting()Z

    move-result p0

    if-eqz p0, :cond_50

    and-int/lit16 p0, p1, 0x381

    const-string v0, "roamBand"

    .line 175
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    :cond_50
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDHCPRenewalAfterRoam()Z

    move-result p0

    if-eqz p0, :cond_5d

    and-int/lit16 p0, p1, 0x100

    const-string p1, "nodhcprenewal"

    .line 178
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5d
    return-void
.end method


# virtual methods
.method getConnectivityCheckDisabledSetting()Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->isConnectivityCheckDisabled:Z

    return p0
.end method

.method getFeedback()Landroid/os/Bundle;
    .registers 3

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    if-eqz p0, :cond_e

    const-string v1, "wificonfiguration"

    .line 131
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_e
    return-object v0
.end method

.method parse(Landroid/os/Bundle;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;",
            ">;"
        }
    .end annotation

    const-string v0, "disable_connectivity_check"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parseConnectivityCheckPolicy(Landroid/os/Bundle;)V

    :cond_b
    const-string v0, "wificonfiguration"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    const-string v0, "SemWifiB2BPolicy"

    if-eqz p1, :cond_36

    .line 94
    array-length p1, p1

    if-lez p1, :cond_36

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse network policies size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parseNetworkPolicy()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_36
    const-string p0, "there is no policies"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
