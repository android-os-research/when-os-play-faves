.class public Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;
.super Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.source "WifiProfileShareData.java"


# static fields
.field static final JSON_KEY_AUTO_JOIN:Ljava/lang/String; = "autojoin"

.field static final JSON_KEY_HIDDEN_SSID:Ljava/lang/String; = "hiddenssid"

.field static final JSON_KEY_PASSWORD:Ljava/lang/String; = "password"

.field static final JSON_KEY_RANDOM_MAC:Ljava/lang/String; = "randommac"

.field static final JSON_KEY_SECURE_TYPE:Ljava/lang/String; = "securetype"

.field static final JSON_KEY_SSID:Ljava/lang/String; = "ssid"

.field static final OPEN:Ljava/lang/String; = "open"

.field static final OWE:Ljava/lang/String; = "owe"

.field static final PSK:Ljava/lang/String; = "psk"

.field static final SAE:Ljava/lang/String; = "sae"

.field private static final TAG:Ljava/lang/String; = "SemWifi.ContinuityData"

.field public static final TYPE:I = 0x1

.field static final WAPI:Ljava/lang/String; = "wapi"

.field static final WEP:Ljava/lang/String; = "wep"


# instance fields
.field private final allowAutojoin:Z

.field private final isHiddenSSID:Z

.field private final networkName:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final randomMac:I

.field private final secureType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;-><init>(I)V

    .line 66
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isRequiresPassword()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "wep"

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 70
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    goto :goto_2d

    .line 72
    :cond_21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    goto :goto_2d

    :cond_29
    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    .line 77
    :goto_2d
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    .line 78
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    .line 79
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;-><init>(I)V

    const-string v0, "ssid"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    const-string v0, "securetype"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isRequiresPassword()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "password"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    goto :goto_27

    :cond_23
    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    :goto_27
    const-string v0, "autojoin"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    const-string v0, "hiddenssid"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    const-string v0, "randommac"

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    return-void
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    .line 96
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "sae"

    return-object p0

    :cond_a
    const/4 v0, 0x2

    .line 98
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "psk"

    return-object p0

    :cond_14
    const/4 v0, 0x6

    .line 100
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "owe"

    return-object p0

    :cond_1e
    const/4 v0, 0x7

    .line 102
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string p0, "wapi"

    return-object p0

    :cond_28
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p0, "wep"

    return-object p0

    :cond_32
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "open"

    return-object p0

    .line 109
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported security type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isRequiresPassword()Z
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    const-string v1, "owe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    const-string v0, "open"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static isSupported(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 1

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 9

    .line 114
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_98

    goto :goto_5c

    :sswitch_1b
    const-string v2, "wapi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_5c

    :cond_24
    const/4 v7, 0x5

    goto :goto_5c

    :sswitch_26
    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_5c

    :cond_2f
    move v7, v3

    goto :goto_5c

    :sswitch_31
    const-string v2, "wep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_5c

    :cond_3a
    const/4 v7, 0x3

    goto :goto_5c

    :sswitch_3c
    const-string v2, "sae"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_5c

    :cond_45
    move v7, v4

    goto :goto_5c

    :sswitch_47
    const-string v2, "psk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_5c

    :cond_50
    move v7, v5

    goto :goto_5c

    :sswitch_52
    const-string v2, "owe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v7, v6

    :goto_5c
    packed-switch v7, :pswitch_data_b2

    goto :goto_8b

    :pswitch_60
    const/4 v1, 0x7

    .line 126
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8b

    .line 137
    :pswitch_69
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_8b

    .line 130
    :pswitch_6d
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 131
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    aput-object v2, v1, v6

    goto :goto_8b

    .line 122
    :pswitch_77
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8b

    .line 118
    :pswitch_7f
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8b

    :pswitch_87
    const/4 v1, 0x6

    .line 134
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 140
    :goto_8b
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 141
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 142
    iget p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return-object v0

    :sswitch_data_98
    .sparse-switch
        0x1af7d -> :sswitch_52
        0x1b2c8 -> :sswitch_47
        0x1bbd7 -> :sswitch_3c
        0x1cb62 -> :sswitch_31
        0x34264a -> :sswitch_26
        0x379243 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6d
        :pswitch_69
        :pswitch_60
    .end packed-switch
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .registers 4

    .line 149
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ssid"

    .line 150
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "securetype"

    .line 151
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->secureType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isRequiresPassword()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "password"

    .line 153
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    const-string v1, "autojoin"

    .line 155
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->allowAutojoin:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hiddenssid"

    .line 156
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isHiddenSSID:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "randommac"

    .line 157
    iget p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->randomMac:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    const-string p0, "SemWifi.ContinuityData"

    const-string v0, "failed to generate shared data"

    .line 160
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
