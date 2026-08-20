.class public Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
.super Ljava/lang/Object;
.source "WifiDriverVersionProvider.java"


# static fields
.field private static final NULL_STRING:Ljava/lang/String; = "null"

.field static final STRING_NOT_READY:Ljava/lang/String; = "not ready"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifi.DriverVersion"

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_MTK:Ljava/lang/String; = "ediatek"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SLSI:Ljava/lang/String; = "rv_ver:"

.field private static final WIFI_VER_PREFIX_SPRTRM:Ljava/lang/String; = "is 0x"

.field static final WRONG_VALUE:Ljava/lang/String; = "NG"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCidInfoString:Ljava/lang/String;

.field private mDriverVer:Ljava/lang/String;

.field private mFirmwareVer:Ljava/lang/String;

.field private mIsReady:Z

.field private mMacAddress:Ljava/lang/String;

.field private mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field private final mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

.field private final mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private mWifiVerInfoString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    const-string p1, "null"

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 60
    sget-object p1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 61
    new-instance p1, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    return-void
.end method

.method private addCommas(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "HW"

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2c

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string p0, ""

    return-object p0
.end method

.method private parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .registers 7

    const-string p0, "NG"

    if-nez p1, :cond_5

    return-object p0

    .line 147
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2b

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr v0, p3

    if-eqz p4, :cond_23

    .line 151
    invoke-virtual {p1, p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_2b

    add-int/2addr p2, p5

    .line 153
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_2b
    return-object p0
.end method

.method private parseWifiVersion(Ljava/lang/String;)Z
    .registers 12

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-string p1, "error"

    .line 164
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    return v1

    :cond_c
    const-string v0, "NG"

    .line 167
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    .line 168
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_172

    .line 169
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_168

    if-eqz v3, :cond_28

    .line 221
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_172

    return v1

    :cond_28
    :try_start_28
    const-string v3, "HD_ver"

    .line 173
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 174
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "HD_ver:"

    const/4 v7, 0x1

    const-string v8, " "

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 175
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 177
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    const/4 v6, 0x1

    const-string v7, " "

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    goto/16 :goto_15c

    :cond_55
    const-string v3, "CNSS"

    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 180
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "v"

    const/4 v7, 0x0

    const-string v8, " CNSS"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 181
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    const-string v6, "CNSS-PR-"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 183
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    goto/16 :goto_15c

    :cond_7e
    const-string v3, "FW:"

    .line 185
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 186
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "SW"

    const/4 v7, 0x1

    const-string v8, "FW"

    const/4 v9, -0x2

    move-object v4, p0

    move-object v5, p1

    .line 187
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    const-string v6, "FW"

    const/4 v7, 0x1

    const-string v8, "HW"

    const/4 v9, -0x2

    move-object v4, p0

    move-object v5, p1

    .line 189
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    goto/16 :goto_15c

    :cond_a8
    const-string v3, "received"

    .line 191
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 192
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "-GPL"

    const/4 v7, -0x4

    const-string v8, "-GPL"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 193
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    const-string v6, ".p"

    const/4 v7, -0x1

    const-string v8, "-"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 195
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    goto/16 :goto_15c

    :cond_d2
    const-string v3, "is 0x"

    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 198
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "cp version is "

    const/4 v7, 0x0

    const-string v8, "date"

    const/4 v9, -0x2

    move-object v4, p0

    move-object v5, p1

    .line 199
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    const-string v6, "driver version is "

    const/4 v7, 0x1

    const-string v8, "] ["

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 201
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    goto :goto_15c

    :cond_fb
    const-string v3, "rv_ver:"

    .line 203
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 204
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "drv_ver:"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 205
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 207
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "|"

    const/4 v6, 0x0

    const-string v7, "|"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    goto :goto_15c

    :cond_126
    const-string v3, "ediatek"

    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 210
    sget-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v6, "DRIVER_VER:"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 211
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    .line 213
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FW_VER:"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseVersionString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_15a

    sub-int/2addr v3, v4

    .line 217
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 219
    :cond_15a
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;
    :try_end_15c
    .catchall {:try_start_28 .. :try_end_15c} :catchall_168

    .line 221
    :cond_15c
    :goto_15c
    :try_start_15c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_172

    .line 225
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_168
    move-exception p1

    .line 168
    :try_start_169
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_16d

    goto :goto_171

    :catchall_16d
    move-exception v0

    :try_start_16e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_171
    throw p1
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_172} :catch_172

    :catch_172
    const-string p1, "exception"

    .line 222
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    return v1
.end method


# virtual methods
.method public checkAndUpdate()V
    .registers 5

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mMacAddress:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getWifiCid()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 81
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    .line 84
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFeatureInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->parse(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getWifiVersions()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseWifiVersion(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    const-string v2, "SemWifi.DriverVersion"

    if-nez v1, :cond_53

    const-string v0, "vendor.wlan.firmware.version"

    .line 90
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->addCommas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vendor.wlan.firmware.version : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->parseWifiVersion(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    .line 96
    :cond_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string p0, "failed to get Wi-Fi version"

    .line 97
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_5f
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    if-eqz v0, :cond_8d

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wi-Fi vendor is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firmware version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 105
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse Wi-Fi version, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a3
    return-void
.end method

.method public getAllVersions()Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    return-object p0
.end method

.method public getCidInfo()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    return-object p0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mDriverVer:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiFeatureProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    return-object p0
.end method

.method public getFirmwareVersion(Z)Ljava/lang/String;
    .registers 3

    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    if-nez v0, :cond_7

    const-string p0, "not ready"

    return-object p0

    .line 121
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->getFactoryModeName()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_15
    const-string p1, ""

    :goto_17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mFirmwareVer:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddressFromFile()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiChipVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    return-object p0
.end method

.method public isReady()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mIsReady:Z

    if-eqz v1, :cond_c

    const-string v1, "[READY]"

    goto :goto_e

    :cond_c
    const-string v1, "[NOT READY]"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n - cid.info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mCidInfoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n - ver.info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->mWifiVerInfoString:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
