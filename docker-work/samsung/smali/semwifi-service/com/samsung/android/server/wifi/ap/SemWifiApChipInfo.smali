.class public Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;
.super Ljava/lang/Object;
.source "SemWifiApChipInfo.java"


# static fields
.field private static final MHSDBG:Z

.field public static SoftAp_HalFn_getValidChannels:Ljava/lang/String; = "na"

.field public static SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String; = "na"

.field public static SoftAp_MaxClient:Ljava/lang/String; = "na"

.field public static SoftAp_PowerSave:Ljava/lang/String; = "na"

.field public static SoftAp_Support5g:Ljava/lang/String; = "na"

.field public static SoftAp_Support5gBasedOnCountry:Ljava/lang/String; = "na"

.field public static SoftAp_SupportDualInterface:Ljava/lang/String; = "na"

.field public static SoftAp_SupportWifiSharing:Ljava/lang/String; = "na"

.field private static final TAG:Ljava/lang/String; = "SemWifiApChipInfo"

.field public static mCount:I = 0x0

.field public static mIsReadSoftApInfo:Z = false

.field public static mSupportWifiSharing:Z = false

.field public static mSupportWifiSharingLite:Z = false


# instance fields
.field private isSoftApFileBroken:I

.field private mContext:Landroid/content/Context;

.field private mIsReady:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isSoftApFileBroken:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addMHSDumpLog(Ljava/lang/String;)V
    .registers 7

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mhs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApChipInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_65

    .line 74
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    :cond_65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkSoftApFile(Ljava/lang/String;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p1, "checkSoftApFile fail str null."

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    return v0

    :cond_9
    const-string v1, "\n"

    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 239
    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_29

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSoftApFile fail less line."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    return v0

    .line 244
    :cond_29
    array-length v1, p1

    move v2, v0

    :goto_2b
    const/4 v3, 0x1

    if-ge v2, v1, :cond_128

    aget-object v4, p1, v2

    const-string v5, "DualBandConcurrency"

    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "checkSoftApFile fail "

    const-string v7, "no"

    const-string v8, "yes"

    const/4 v9, 0x2

    const-string v10, "="

    if-eqz v5, :cond_6e

    .line 248
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 249
    array-length v10, v5

    if-ge v10, v9, :cond_4b

    :goto_48
    move v3, v0

    goto/16 :goto_110

    .line 251
    :cond_4b
    aget-object v9, v5, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_110

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_110

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    goto :goto_48

    :cond_6e
    const-string v5, "5G"

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 256
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 257
    array-length v10, v5

    if-ge v10, v9, :cond_7e

    goto :goto_48

    .line 259
    :cond_7e
    aget-object v9, v5, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_110

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_110

    goto :goto_48

    :cond_8f
    const-string v5, "maxClient"

    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 263
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 264
    array-length v7, v5

    if-ge v7, v9, :cond_9f

    goto :goto_48

    .line 266
    :cond_9f
    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_110

    goto :goto_48

    :cond_a8
    const-string v5, "HalFn_setCountryCodeHal"

    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 270
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 271
    array-length v10, v5

    if-ge v10, v9, :cond_b8

    goto :goto_48

    .line 273
    :cond_b8
    aget-object v9, v5, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_110

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_110

    goto/16 :goto_48

    :cond_ca
    const-string v5, "HalFn_getValidChannels"

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 277
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 278
    array-length v10, v5

    if-ge v10, v9, :cond_db

    goto/16 :goto_48

    .line 280
    :cond_db
    aget-object v9, v5, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_110

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_110

    goto/16 :goto_48

    :cond_ed
    const-string v5, "DualInterface"

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 284
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 285
    array-length v10, v5

    if-ge v10, v9, :cond_fe

    goto/16 :goto_48

    .line 287
    :cond_fe
    aget-object v9, v5, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_110

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_110

    goto/16 :goto_48

    :cond_110
    :goto_110
    if-nez v3, :cond_124

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    :cond_124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    :cond_128
    return v3
.end method

.method private setDefaultMaxClient(Ljava/lang/String;)V
    .registers 6

    const-string p0, "SemWifiApChipInfo"

    .line 208
    sget v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I

    if-eqz p1, :cond_5e

    const-string v1, "na"

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5e

    .line 213
    :cond_f
    :try_start_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_2a

    :catch_14
    move-exception p1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :goto_2a
    if-ge p1, v0, :cond_2e

    move v1, p1

    goto :goto_2f

    :cond_2e
    move v1, v0

    :goto_2f
    const/16 v2, 0xa

    if-ge v1, v2, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    .line 220
    :goto_35
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    if-eqz v2, :cond_5d

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "featureNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " chipNum:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rInt:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    move v0, v1

    .line 224
    :cond_5e
    :goto_5e
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vendor.wifiap.defaultmaxclient"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkSoftApFileBrokenStatus()I
    .registers 1

    .line 228
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isSoftApFileBroken:I

    return p0
.end method

.method public checkWifiSharing()V
    .registers 8

    const-string v0, "ro.product.first_api_level"

    const/4 v1, -0x1

    .line 303
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 306
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    if-eqz v2, :cond_14

    const-string v3, "vendor.wifiap.first_api_level"

    .line 307
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_14

    move v0, v3

    .line 315
    :cond_14
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 316
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 317
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    goto :goto_50

    .line 318
    :cond_2d
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    const-string v6, "false"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 319
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 320
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    goto :goto_50

    .line 321
    :cond_44
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 322
    sput-boolean v5, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 323
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 336
    :cond_50
    :goto_50
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "146"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "Disable wifisharing"

    .line 337
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 338
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    .line 339
    sput-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    .line 342
    :cond_63
    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    const-string v3, "vendor.wifi.dualconcurrent.interface"

    if-nez v1, :cond_74

    sget-boolean v1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    if-eqz v1, :cond_6e

    goto :goto_74

    :cond_6e
    const-string v1, "wlan0"

    .line 345
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :cond_74
    :goto_74
    const-string v1, "swlan0"

    .line 343
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "vendor.wifiap.wifisharinglite"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " "

    if-eqz v2, :cond_b9

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vendor.wifi.dualconcurrent.interface "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "aaaa"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 354
    :cond_b9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkWifiSharing() "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApChipInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 5

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--WifiApChipInfo\n"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSharing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxClient:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5g:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5gBasedOnCountry:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerSave:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualInterface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "---softap.info:\n"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isReady()Z
    .registers 1

    .line 300
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    return p0
.end method

.method public readSoftApInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string v0, "na"

    const-string v1, "IOException "

    const-string v2, "SemWifiApChipInfo"

    .line 94
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkSoftApFile(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_16

    .line 98
    iput v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isSoftApFileBroken:I

    goto :goto_18

    .line 100
    :cond_16
    iput v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->isSoftApFileBroken:I

    :goto_18
    const-string v4, ""

    if-nez p1, :cond_26

    const-string p1, "softap.info path is null."

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 104
    sput-boolean v6, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 105
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z

    return-object v4

    :cond_26
    const/4 v7, 0x0

    .line 110
    :try_start_27
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_1c1
    .catchall {:try_start_27 .. :try_end_31} :catchall_1bf

    .line 114
    :try_start_31
    sput-boolean v6, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    .line 115
    :cond_33
    :goto_33
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_1bc
    .catchall {:try_start_31 .. :try_end_37} :catchall_1b9

    const-string v7, "true"

    if-eqz p1, :cond_158

    .line 116
    :try_start_3b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSoftApInfo :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "#"

    .line 124
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8f

    goto :goto_33

    :cond_8f
    const/16 v9, 0x3d

    .line 127
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_33

    .line 129
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v9, "DualBandConcurrency"

    .line 131
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_ac} :catch_1bc
    .catchall {:try_start_3b .. :try_end_ac} :catchall_1b9

    const-string v11, "false"

    const-string v12, "yes"

    if-eqz v9, :cond_c0

    .line 132
    :try_start_b2
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 133
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    goto/16 :goto_33

    .line 135
    :cond_bc
    sput-object v11, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    goto/16 :goto_33

    :cond_c0
    const-string v9, "5G"

    .line 137
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 138
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 139
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    goto/16 :goto_33

    .line 141
    :cond_d2
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "A125U"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_eb

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "A125W"

    .line 142
    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e7

    goto :goto_eb

    .line 146
    :cond_e7
    sput-object v11, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_eb
    :goto_eb
    const-string p1, "hardcoding 5G=yes"

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 144
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    goto/16 :goto_33

    :cond_f4
    const-string v9, "maxClient"

    .line 149
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_100

    .line 150
    sput-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    goto/16 :goto_33

    :cond_100
    const-string v9, "HalFn_setCountryCodeHal"

    .line 152
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_116

    .line 153
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_112

    .line 154
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    goto/16 :goto_33

    .line 156
    :cond_112
    sput-object v11, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    goto/16 :goto_33

    :cond_116
    const-string v9, "HalFn_getValidChannels"

    .line 159
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 160
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_128

    .line 161
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    goto/16 :goto_33

    .line 163
    :cond_128
    sput-object v11, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    goto/16 :goto_33

    :cond_12c
    const-string v9, "PowerSave"

    .line 165
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_142

    .line 166
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13e

    .line 167
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    goto/16 :goto_33

    .line 169
    :cond_13e
    sput-object v11, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    goto/16 :goto_33

    :cond_142
    const-string v9, "DualInterface"

    .line 171
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 172
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_154

    .line 173
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    goto/16 :goto_33

    .line 175
    :cond_154
    sput-object v11, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_SupportDualInterface:Ljava/lang/String;

    goto/16 :goto_33

    .line 181
    :cond_158
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16b

    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 182
    sput-object v7, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    goto :goto_17d

    .line 183
    :cond_16b
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17d

    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17d

    .line 184
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    .line 186
    :cond_17d
    :goto_17d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_chip_maxclient"

    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_chip_support5g"

    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_chip_support5g_baseon_country"

    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->setDefaultMaxClient(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkWifiSharing()V

    .line 191
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReady:Z
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_1ae} :catch_1bc
    .catchall {:try_start_b2 .. :try_end_1ae} :catchall_1b9

    .line 197
    :try_start_1ae
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b1} :catch_1b2

    goto :goto_1ef

    :catch_1b2
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1e2

    :catchall_1b9
    move-exception p0

    move-object v7, v8

    goto :goto_1f4

    :catch_1bc
    move-exception p0

    move-object v7, v8

    goto :goto_1c2

    :catchall_1bf
    move-exception p0

    goto :goto_1f4

    :catch_1c1
    move-exception p0

    .line 193
    :goto_1c2
    :try_start_1c2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catchall {:try_start_1c2 .. :try_end_1d6} :catchall_1bf

    if-eqz v7, :cond_1ef

    .line 197
    :try_start_1d8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_1dc

    goto :goto_1ef

    :catch_1dc
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1e2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1ef
    :goto_1ef
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1f4
    if-eqz v7, :cond_20d

    .line 197
    :try_start_1f6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_1fa

    goto :goto_20d

    :catch_1fa
    move-exception p1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_20d
    :goto_20d
    throw p0
.end method

.method public supportWifiSharing()Z
    .registers 3

    .line 360
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    if-nez v0, :cond_21

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportWifiSharing() !!! try to use before init !!!! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 364
    :cond_21
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    if-eqz v0, :cond_31

    const-string v0, "vendor.wifiap.first_api_level"

    const/4 v1, -0x1

    .line 365
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_31

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkWifiSharing()V

    .line 373
    :cond_31
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharing:Z

    return p0
.end method

.method public supportWifiSharingLite()Z
    .registers 3

    .line 380
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mIsReadSoftApInfo:Z

    if-nez v0, :cond_21

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportWifiSharingLite() !!! try to use before init !!!! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 384
    :cond_21
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->MHSDBG:Z

    if-eqz v0, :cond_31

    const-string v0, "vendor.wifiap.first_api_level"

    const/4 v1, -0x1

    .line 385
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_31

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->checkWifiSharing()V

    .line 392
    :cond_31
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->mSupportWifiSharingLite:Z

    return p0
.end method
