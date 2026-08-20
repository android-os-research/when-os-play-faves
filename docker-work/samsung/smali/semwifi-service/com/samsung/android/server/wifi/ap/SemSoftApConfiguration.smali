.class public Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;
.super Ljava/lang/Object;
.source "SemSoftApConfiguration.java"


# static fields
.field private static final MHSDBG:Z

.field private static final SamsungHotspotVSIE:I = 0x80

.field private static final SamsungOUI:Ljava/lang/String; = "001632"

.field private static final TAG:Ljava/lang/String; = "SemSoftApConfiguration"

.field private static final mDualAp5GHzChannels:Landroid/util/SparseIntArray;

.field private static final mDualAp6GHzChannels:Landroid/util/SparseIntArray;

.field private static mInternalCountries2GOnly:[Ljava/lang/String;

.field private static mInternalCountries6G:[Ljava/lang/String;

.field private static mSoftApCapability:Landroid/net/wifi/SoftApCapability;


# instance fields
.field private channel2G:I

.field private isJDMDevice:Z

.field private isResetSoftApCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDisableRandomMac:Z

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIs11Ax:Z

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveChecked:Z

.field private swm:Lcom/samsung/android/wifi/SemWifiManager;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetchannel2G(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 62

    .line 64
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    const-string v1, "KP"

    const-string v2, "SY"

    const-string v3, "CU"

    const-string v4, "IR"

    const-string v5, "SD"

    const-string v6, "BY"

    const-string v7, "DZ"

    const-string v8, "EG"

    const-string v9, "EH"

    const-string v10, "ER"

    const-string v11, "ET"

    const-string v12, "JP"

    const-string v13, "KZ"

    const-string v14, "MA"

    const-string v15, "MG"

    const-string v16, "MM"

    const-string v17, "OM"

    const-string v18, "QA"

    const-string v19, "RU"

    const-string v20, "SL"

    const-string v21, "SR"

    const-string v22, "TN"

    const-string v23, "UZ"

    const-string v24, "ZW"

    const-string v25, "GH"

    const-string v26, "GM"

    const-string v27, "GP"

    const-string v28, "GN"

    const-string v29, "GW"

    const-string v30, "NR"

    const-string v31, "NC"

    const-string v32, "NE"

    const-string v33, "LS"

    const-string v34, "RW"

    const-string v35, "IM"

    const-string v36, "MU"

    const-string v37, "MR"

    const-string v38, "BW"

    const-string v39, "BI"

    const-string v40, "BF"

    const-string v41, "BT"

    const-string v42, "ST"

    const-string v43, "PM"

    const-string v44, "SN"

    const-string v45, "SO"

    const-string v46, "SB"

    const-string v47, "AF"

    const-string v48, "JE"

    const-string v49, "GQ"

    const-string v50, "DJ"

    const-string v51, "KM"

    const-string v52, "CI"

    const-string v53, "CG"

    const-string v54, "CD"

    const-string v55, "KG"

    const-string v56, "TJ"

    const-string v57, "TO"

    const-string v58, "TM"

    const-string v59, "TV"

    const-string v60, "FK"

    const-string v61, "PN"

    .line 77
    filled-new-array/range {v1 .. v61}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly:[Ljava/lang/String;

    const-string v1, "KR"

    const-string v2, "GB"

    const-string v3, "NO"

    const-string v4, "CH"

    const-string v5, "IS"

    const-string v6, "GR"

    const-string v7, "NL"

    const-string v8, "DK"

    const-string v9, "DE"

    const-string v10, "LV"

    const-string v11, "LU"

    const-string v12, "LT"

    const-string v13, "MT"

    const-string v14, "BE"

    const-string v15, "SE"

    const-string v16, "ES"

    const-string v17, "SK"

    const-string v18, "SI"

    const-string v19, "IE"

    const-string v20, "EE"

    const-string v21, "AT"

    const-string v22, "IT"

    const-string v23, "CZ"

    const-string v24, "HR"

    const-string v25, "CY"

    const-string v26, "PT"

    const-string v27, "PL"

    const-string v28, "FR"

    const-string v29, "FI"

    const-string v30, "HU"

    const-string v31, "BA"

    const-string v32, "AL"

    const-string v33, "XK"

    const-string v34, "BG"

    const-string v35, "AU"

    const-string v36, "BR"

    const-string v37, "NZ"

    const-string v38, "CR"

    .line 85
    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries6G:[Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    .line 94
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$2;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$2;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp6GHzChannels:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isJDMDevice:Z

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mPowerSaveChecked:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    .line 102
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-void
.end method

.method private convertApMac(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, ""

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isDualAp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemSoftApConfiguration"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :try_start_1c
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiChip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_40} :catch_278
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_262

    const-string v6, "QCA"

    const-string v7, "could not get wifi chip vendor,so setting to random mac"

    const-string v8, "S_LSI"

    const-string v9, "Qualcomm"

    const-string v10, "Broadcom"

    const/4 v11, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v5, 0x2

    const/16 v12, 0x10

    if-eqz v1, :cond_16d

    .line 673
    :try_start_52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x3

    if-nez v1, :cond_cd

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 674
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 675
    :cond_65
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 676
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 677
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v1, v5

    .line 678
    rem-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    not-int v3, v3

    and-int/lit8 v3, v3, 0xf

    .line 679
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    not-int v6, v6

    and-int/lit8 v6, v6, 0xf

    .line 680
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    const/16 v3, 0x11

    .line 682
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b1

    .line 684
    :cond_cd
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_168

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 685
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 686
    :cond_df
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 687
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 688
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xc

    .line 689
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    xor-int/2addr v1, v5

    .line 690
    rem-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    not-int v3, v3

    and-int/lit8 v3, v3, 0xf

    .line 691
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    not-int v6, v6

    and-int/lit8 v6, v6, 0xf

    .line 692
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    xor-int/2addr v7, v11

    .line 693
    rem-int/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 694
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    const/16 v3, 0xc

    .line 695
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    const/16 v3, 0x11

    .line 696
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b1

    .line 699
    :cond_168
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28d

    .line 704
    :cond_16d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 705
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 706
    :cond_17f
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v5

    .line 707
    rem-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b1
    move-object v2, v0

    goto/16 :goto_28d

    .line 709
    :cond_1b4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21b

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c6

    .line 710
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21b

    .line 711
    :cond_1c6
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xc

    .line 712
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    xor-int/2addr v1, v5

    .line 713
    rem-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    xor-int/2addr v3, v11

    .line 714
    rem-int/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    const/16 v3, 0x11

    .line 716
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b1

    .line 717
    :cond_21b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25e

    const-string v1, "MTK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25e

    .line 718
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    xor-int/lit8 v1, v1, 0x6

    .line 719
    rem-int/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b1

    .line 723
    :cond_25e
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_261
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_261} :catch_278
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_261} :catch_262

    goto :goto_28d

    :catch_262
    move-exception v0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28d

    :catch_278
    move-exception v0

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException is occurred. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28d
    return-object v2
.end method

.method private getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 654
    sget-boolean p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    if-eqz p0, :cond_5

    return-object p1

    :cond_5
    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 660
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x9

    if-le p0, v0, :cond_16

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object p1
.end method

.method private isSepDevice()Z
    .registers 3

    const/4 p0, 0x0

    .line 540
    :try_start_1
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 541
    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move v0, p0

    :goto_11
    if-eqz v0, :cond_14

    const/4 p0, 0x1

    :cond_14
    return p0
.end method

.method private isShipBinary()Z
    .registers 3

    .line 532
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isSepDevice()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 533
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShipBinary :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private saveMacAddressToSoftApConfigStore(Landroid/net/MacAddress;Landroid/net/wifi/SoftApConfiguration;Lcom/samsung/android/wifi/SemWifiManager;)V
    .registers 6

    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    if-nez p3, :cond_7

    goto :goto_34

    .line 525
    :cond_7
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 527
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMacAddressToSoftApConfigStore mac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSoftApConfiguration"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private setLocalConfigMaxClient(Ljava/lang/String;I)I
    .registers 8

    const-string v0, ""

    .line 550
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a3

    .line 551
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 552
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const-string v0, ","

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 554
    :goto_1d
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1a3

    .line 555
    aget-object v1, p1, v0

    const-string v3, "LTE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_3c

    const/16 v1, 0xd

    if-ne p0, v1, :cond_3c

    add-int/lit8 v0, v0, 0x1

    .line 556
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 557
    array-length v0, p1

    goto/16 :goto_1a0

    .line 558
    :cond_3c
    aget-object v1, p1, v0

    const-string v4, "HSPAP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/16 v1, 0xf

    if-ne p0, v1, :cond_55

    add-int/lit8 v0, v0, 0x1

    .line 559
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 560
    array-length v0, p1

    goto/16 :goto_1a0

    .line 561
    :cond_55
    aget-object v1, p1, v0

    const-string v4, "HSPA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/16 v1, 0xa

    if-ne p0, v1, :cond_6e

    add-int/lit8 v0, v0, 0x1

    .line 562
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 563
    array-length v0, p1

    goto/16 :goto_1a0

    .line 564
    :cond_6e
    aget-object v1, p1, v0

    const-string v4, "HSDPA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    const/16 v1, 0x8

    if-ne p0, v1, :cond_87

    add-int/lit8 v0, v0, 0x1

    .line 565
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 566
    array-length v0, p1

    goto/16 :goto_1a0

    .line 567
    :cond_87
    aget-object v1, p1, v0

    const-string v4, "HSUPA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_a0

    add-int/lit8 v0, v0, 0x1

    .line 568
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 569
    array-length v0, p1

    goto/16 :goto_1a0

    .line 570
    :cond_a0
    aget-object v1, p1, v0

    const-string v4, "EDGE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    if-ne p0, v3, :cond_b7

    add-int/lit8 v0, v0, 0x1

    .line 571
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 572
    array-length v0, p1

    goto/16 :goto_1a0

    .line 573
    :cond_b7
    aget-object v1, p1, v0

    const-string v4, "GPRS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    if-ne p0, v2, :cond_ce

    add-int/lit8 v0, v0, 0x1

    .line 574
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 575
    array-length v0, p1

    goto/16 :goto_1a0

    .line 576
    :cond_ce
    aget-object v1, p1, v0

    const-string v2, "UMTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    const/4 v1, 0x3

    if-ne p0, v1, :cond_e6

    add-int/lit8 v0, v0, 0x1

    .line 577
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 578
    array-length v0, p1

    goto/16 :goto_1a0

    .line 579
    :cond_e6
    aget-object v1, p1, v0

    const-string v2, "1xRTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    const/4 v1, 0x7

    if-ne p0, v1, :cond_fe

    add-int/lit8 v0, v0, 0x1

    .line 580
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 581
    array-length v0, p1

    goto/16 :goto_1a0

    .line 582
    :cond_fe
    aget-object v1, p1, v0

    const-string v2, "CDMA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    const/4 v1, 0x4

    if-ne p0, v1, :cond_116

    add-int/lit8 v0, v0, 0x1

    .line 583
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 584
    array-length v0, p1

    goto/16 :goto_1a0

    .line 585
    :cond_116
    aget-object v1, p1, v0

    const-string v2, "EVDO_0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    const/4 v1, 0x5

    if-ne p0, v1, :cond_12e

    add-int/lit8 v0, v0, 0x1

    .line 586
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 587
    array-length v0, p1

    goto/16 :goto_1a0

    .line 588
    :cond_12e
    aget-object v1, p1, v0

    const-string v2, "EVDO_A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    const/4 v1, 0x6

    if-ne p0, v1, :cond_145

    add-int/lit8 v0, v0, 0x1

    .line 589
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 590
    array-length v0, p1

    goto :goto_1a0

    .line 591
    :cond_145
    aget-object v1, p1, v0

    const-string v2, "EVDO_B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    const/16 v1, 0xc

    if-ne p0, v1, :cond_15d

    add-int/lit8 v0, v0, 0x1

    .line 592
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 593
    array-length v0, p1

    goto :goto_1a0

    .line 594
    :cond_15d
    aget-object v1, p1, v0

    const-string v2, "EHRPD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    const/16 v1, 0xe

    if-ne p0, v1, :cond_175

    add-int/lit8 v0, v0, 0x1

    .line 595
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 596
    array-length v0, p1

    goto :goto_1a0

    .line 597
    :cond_175
    aget-object v1, p1, v0

    const-string v2, "IDEN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    const/16 v1, 0xb

    if-ne p0, v1, :cond_18d

    add-int/lit8 v0, v0, 0x1

    .line 598
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 599
    array-length v0, p1

    goto :goto_1a0

    .line 600
    :cond_18d
    aget-object v1, p1, v0

    const-string v2, "OTHERS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    add-int/lit8 v0, v0, 0x1

    .line 601
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 602
    array-length v0, p1

    :cond_1a0
    :goto_1a0
    add-int/2addr v0, v3

    goto/16 :goto_1d

    :cond_1a3
    return p2
.end method

.method public static showCSCvalues()Ljava/lang/String;
    .registers 5

    .line 610
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[cscfile] value\n"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPBRANDING=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_ConfigOpBrandingForMobileAp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiapcust=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v3, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAXCLIENT=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SarBackOff=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_SupportMobileApOnTrigger"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMEOUT=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigMobileApDefaultTimeOut"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MENUMAXCLIENT=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_SupportMenuMobileApMaxClient"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSID=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigMobileApDefaultSSID"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PWD=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigMobileApDefaultPwd"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BATTERYUSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAXCLIENT4MOBILEAPNETEXTENSION="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_MaxClient4MobileApNetExtension"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showMoreInfo()Ljava/lang/String;
    .registers 5

    .line 630
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "More Info\n"

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SalesCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "SalesCode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SFF BRAND_NAME="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal6G:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries6G:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal2G:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI2G:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->mCountries2GOnly:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoftApCapability:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiChip:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHSDBG="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showSecProductFeature()Ljava/lang/String;
    .registers 2

    .line 644
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SPF info \n"

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "SPF_BackOff=true\n"

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "SPF_5G_BASEDON_COUNTRY=true\n"

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "SPF_POWER_SAVEMODE=false\n"

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "SPF_JDM=jdm\n"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 107
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SemSoftApConfiguration"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mhs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

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

    .line 111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_66

    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    :cond_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_71

    .line 115
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--SemSoftApConfiguration \n"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->showCSCvalues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->showSecProductFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->showMoreInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "---MHS history: \n"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v0, "wifi_ap_guest_password"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApMaxClientFromFramework()I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "wifi_ap_maxclient_framework"

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClient()I

    move-result v0

    goto :goto_25

    .line 186
    :cond_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_25
    if-nez v0, :cond_2d

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClient()I

    move-result v0

    .line 189
    :cond_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getmaxclient API:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemSoftApConfiguration"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isInternal2GCountry(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    .line 749
    :goto_2
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries2GOnly:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 750
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    :goto_14
    return p0
.end method

.method public isInternal6GCountry(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    .line 736
    :goto_2
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mInternalCountries6G:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 737
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p0, "SemSoftApConfiguration"

    const-string p1, " 6G supported country"

    .line 738
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    :goto_1b
    return p0
.end method

.method public isWifiApEnabledWithDualBand()Z
    .registers 3

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWifiApEnabledWithDualBand API:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemSoftApConfiguration"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWifiApGuestModeEnabled()Z
    .registers 4

    .line 157
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_guest_settings_val"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiApGuestModeEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemSoftApConfiguration"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    move v1, v0

    :cond_27
    return v1
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .registers 4

    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_guest_isolation_settings_val"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiApGuestModeIsolationEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemSoftApConfiguration"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    move v1, v0

    :cond_27
    return v1
.end method

.method public resetsoftap()V
    .registers 2

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    return-void
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/SoftApConfiguration;
    .registers 22

    move-object/from16 v1, p0

    .line 198
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    .line 199
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v2, "SemSoftApConfiguration"

    if-nez v0, :cond_23

    const-string v0, "SEM_WIFI_SERVICE is null"

    .line 201
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_23
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4d

    const-string v0, "ro.csc.countryiso_code"

    const-string v3, "JP"

    .line 204
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set country code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move-object v3, v0

    const-string v0, "ro.product.first_api_level"

    const/4 v4, -0x1

    .line 208
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "ro.product.build.version.sdk"

    .line 209
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez p1, :cond_6e

    .line 210
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_6e

    const-string v0, "mSoftAp is null only in error case and other direct cases with null softap"

    .line 211
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    move-object v7, v0

    goto :goto_70

    :cond_6e
    move-object/from16 v7, p1

    .line 214
    :goto_70
    new-instance v8, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v8, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 216
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_8d

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isInternal2GCountry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    move v11, v9

    goto :goto_8e

    :cond_8d
    move v11, v10

    .line 219
    :goto_8e
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isInternal6GCountry(Ljava/lang/String;)Z

    move-result v12

    const/16 v0, 0x1f

    const/4 v13, 0x4

    if-lt v5, v0, :cond_df

    .line 222
    :try_start_97
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getSoftApCapability()Landroid/net/wifi/SoftApCapability;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mSoftApCapability:Landroid/net/wifi/SoftApCapability;

    if-eqz v0, :cond_df

    .line 234
    invoke-virtual {v0, v13}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v0

    .line 235
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " mSoftApCapability 6GHZ:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " bSupport6G "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    array-length v0, v0
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_d5} :catch_db

    if-lez v0, :cond_df

    if-nez v12, :cond_df

    move v12, v9

    goto :goto_df

    :catch_db
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    :cond_df
    :goto_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bSupport5G:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " bSupport6G:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " first_api:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " current_api:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 248
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v5

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApMaxClientFromFramework()I

    move-result v6

    .line 251
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_ap_powersave_mode_checked"

    invoke-static {v14, v15, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v9, :cond_128

    move v14, v9

    goto :goto_129

    :cond_128
    move v14, v10

    :goto_129
    iput-boolean v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mPowerSaveChecked:Z

    .line 252
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_ap_11ax_mode_checked"

    invoke-static {v14, v15, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v9, :cond_13b

    move v14, v9

    goto :goto_13c

    :cond_13b
    move v14, v10

    :goto_13c
    iput-boolean v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    .line 253
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_ap_disable_random_mac"

    invoke-static {v14, v15, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v9, :cond_14e

    move v14, v9

    goto :goto_14f

    :cond_14e
    move v14, v10

    :goto_14f
    iput-boolean v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    .line 254
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_ap_last_2g_channel"

    invoke-static {v14, v15, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    if-gez v14, :cond_163

    .line 257
    iput v10, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    .line 259
    :cond_163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSoftApConfiguration() mDisableRandomMac: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " mChannel "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " mMAXClients "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mIs11Ax "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "vendor.wifiap.pmf"

    const-string v15, "0"

    .line 261
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v13, "wifi_ap_pmf_checked"

    invoke-static {v4, v13, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v13, "1"

    if-ne v4, v9, :cond_1ad

    .line 265
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ad
    const-string v4, "vendor.wifiap.axmode"

    .line 268
    invoke-static {v4, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_1c2

    if-nez v12, :cond_1c2

    const-string v5, " only 2G supported countries"

    .line 277
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    goto/16 :goto_24e

    .line 280
    :cond_1c2
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-le v10, v9, :cond_1d2

    const-string v5, " SPF dualAp is not enabled"

    .line 282
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$4;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    :cond_1d2
    const/4 v10, 0x0

    .line 286
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    const/4 v10, 0x4

    and-int/lit8 v18, v18, 0x4

    if-nez v18, :cond_1ec

    .line 287
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-le v10, v9, :cond_1f8

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    const/16 v18, 0x4

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1f8

    :cond_1ec
    if-nez v12, :cond_1f8

    const-string v5, "supportWifiAp6GBasedOnCountry is false"

    .line 289
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    :cond_1f8
    const/4 v10, 0x0

    .line 293
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    const/4 v10, 0x2

    and-int/2addr v12, v10

    if-nez v12, :cond_20e

    .line 294
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-le v12, v9, :cond_21a

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    and-int/2addr v12, v10

    if-eqz v12, :cond_21a

    :cond_20e
    if-nez v11, :cond_21a

    const-string v5, "supportWifiAp5GBasedOnCountry is false"

    .line 296
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$6;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 301
    :cond_21a
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ne v10, v9, :cond_245

    const/4 v10, 0x0

    .line 302
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_233

    const-string v5, "2.4 and 5 set in  single band"

    .line 303
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$7;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$7;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    goto :goto_24e

    .line 305
    :cond_233
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    const/4 v10, 0x5

    if-ne v11, v10, :cond_24e

    const-string v5, "2.4 and 6 set in single band "

    .line 306
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$8;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$8;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    goto :goto_24e

    .line 309
    :cond_245
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_24e

    .line 310
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    :cond_24e
    :goto_24e
    const-string v10, "vendor.wifiap.owe_security"

    .line 315
    invoke-static {v10, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_28d

    const-string v11, "OWE is set but OWE SPF not enabled"

    .line 318
    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .line 319
    invoke-virtual {v5, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    const/16 v17, 0x4

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_27e

    .line 320
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-le v12, v9, :cond_279

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_279

    goto :goto_27e

    :cond_279
    const/4 v12, 0x0

    .line 326
    invoke-virtual {v8, v12, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_28e

    :cond_27e
    :goto_27e
    const/4 v12, 0x0

    const-string v5, "OWE is set but OWE is not supported, and 6GHz selected error"

    .line 322
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$9;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$9;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 324
    invoke-virtual {v8, v12, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_28e

    :cond_28d
    const/4 v11, 0x0

    :goto_28e
    const-string v12, "vendor.wifiap.11acmode"

    .line 332
    invoke-static {v12, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v5, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v19

    and-int/lit8 v11, v19, 0x1

    if-nez v11, :cond_29e

    .line 334
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_29e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SemSoftApConfiguration country:"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " powersave:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mPowerSaveChecked:Z

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDisableRandomMac:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " config_channels:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mIs11Ax:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mIs11Ax:Z

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " last2Gch:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->channel2G:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requirePMF:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " owe_security:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-static {v10, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 11acmode:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {v12, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " axmode:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {v4, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->addMHSDumpLog(Ljava/lang/String;)V

    const-string v3, "SPRINT"

    .line 346
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 347
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 348
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/4 v9, 0x1

    if-eq v9, v3, :cond_340

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/4 v9, 0x2

    if-eq v9, v3, :cond_340

    const/16 v3, 0x10

    .line 349
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    if-eq v3, v9, :cond_340

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-nez v0, :cond_350

    :cond_340
    const/4 v6, 0x1

    goto :goto_350

    .line 352
    :cond_342
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_MaxClient4MobileApNetExtension"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-direct {v1, v0, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setLocalConfigMaxClient(Ljava/lang/String;I)I

    move-result v6

    .line 356
    :cond_350
    :goto_350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxClient = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->MHSDBG:Z

    if-eqz v0, :cond_3d5

    const-string v3, "vendor.wifiap.debug.channel"

    .line 358
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "vendor.wifiap.debug.maxclient"

    .line 359
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    if-eqz v3, :cond_3b5

    .line 360
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3b5

    .line 361
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x3e7

    if-ne v3, v5, :cond_38c

    .line 363
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$10;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$10;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    goto :goto_39b

    :cond_38c
    const/16 v5, 0x95

    if-ne v3, v5, :cond_396

    .line 366
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$11;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$11;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    goto :goto_39b

    .line 368
    :cond_396
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$12;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$12;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 370
    :goto_39b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channel is changed "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " apBand(1:2g , 2:5g , 4:6g, -1:any) :"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    :cond_3b5
    if-eqz v9, :cond_3d5

    .line 372
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d5

    .line 373
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxclient is changed "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_3d5
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v3, :cond_422

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v3

    if-eqz v3, :cond_422

    const/4 v3, 0x0

    .line 378
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    const/4 v3, 0x4

    and-int/2addr v9, v3

    if-nez v9, :cond_3f7

    .line 379
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_422

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v9, :cond_422

    goto :goto_3f8

    :cond_3f7
    const/4 v10, 0x1

    .line 380
    :goto_3f8
    invoke-static {v4, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    if-ne v3, v10, :cond_412

    const-string v3, "6GHz selected, but WPA2 is set, error"

    .line 385
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v8, v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_422

    .line 387
    :cond_412
    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    if-nez v3, :cond_422

    const-string v3, "6GHz selected, but OPEN type is set, error"

    .line 388
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$13;

    invoke-direct {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$13;-><init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V

    .line 397
    :cond_422
    :goto_422
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vendor.wifiap.maxclient"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DD05001632"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isShipBinary()Z

    move-result v4

    if-nez v4, :cond_463

    const-string v4, "Add Vendor specific IE DD040000F0FE"

    .line 400
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DD040000F0FE"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    :cond_463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DD080050F21102000000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vendor.wifiap.vendorie"

    .line 404
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "vendor.wifiap.5gindoor"

    .line 405
    invoke-static {v4, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    .line 406
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    const/4 v9, -0x1

    if-le v10, v9, :cond_491

    .line 407
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v9

    if-eqz v9, :cond_491

    .line 408
    invoke-static {v4, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_491
    invoke-virtual {v8, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const-string v4, "2"

    if-eqz v0, :cond_4be

    const-string v0, "vendor.wifiap.debug.dualap"

    .line 413
    invoke-static {v0, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4ae

    const-string v5, "Enabling in  2.4+ 5GHz  DualApMode"

    .line 415
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp5GHzChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 418
    :cond_4ae
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4be

    const-string v0, "Enabling in 2.4+ 6GHz DualApMode"

    .line 419
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDualAp6GHzChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 423
    :cond_4be
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mDisableRandomMac:Z

    if-nez v0, :cond_4d2

    const-string v0, "setSoftApConfiguration() setBssid(null). randomMac will be set in WifiApConfigStore randomizeBssidIfUnset()"

    .line 424
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 425
    invoke-virtual {v8, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v0, 0x0

    .line 426
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v5, 0x0

    goto/16 :goto_649

    .line 429
    :cond_4d2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 430
    array-length v5, v0

    if-lez v5, :cond_534

    const/4 v5, 0x0

    .line 431
    aget-object v12, v0, v5

    const-string v0, ":"

    .line 432
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_535

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_535

    const/4 v9, 0x6

    new-array v10, v9, [Ljava/lang/CharSequence;

    const/4 v11, 0x2

    .line 433
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v10, v5

    const/4 v5, 0x4

    invoke-virtual {v12, v11, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v10, v16

    .line 434
    invoke-virtual {v12, v5, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v10, v11

    const/16 v11, 0x8

    invoke-virtual {v12, v9, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v10, v11

    const/16 v9, 0x8

    const/16 v11, 0xa

    .line 435
    invoke-virtual {v12, v9, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v10, v5

    const/16 v5, 0xa

    const/16 v9, 0xc

    invoke-virtual {v12, v5, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v9, 0x5

    aput-object v5, v10, v9

    .line 433
    invoke-static {v0, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    goto :goto_535

    :cond_534
    const/4 v12, 0x0

    .line 440
    :cond_535
    :goto_535
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isJDMDevice:Z

    if-eqz v0, :cond_559

    .line 441
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v12

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JDM staMac:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_559
    if-eqz v12, :cond_561

    .line 444
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_581

    .line 445
    :cond_561
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddress()Ljava/lang/String;

    move-result-object v12

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMacAddressFromFile from mac file is null, hence try fetch from driver "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_581
    if-eqz v12, :cond_63b

    .line 448
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x11

    if-eq v0, v5, :cond_58d

    goto/16 :goto_63b

    .line 453
    :cond_58d
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isJDMDevice:Z

    const-string v5, ", apMac: "

    if-eqz v0, :cond_5c2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftApConfiguration() JDM staMac: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {v12}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 456
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v5, 0x0

    .line 457
    invoke-virtual {v8, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_649

    :cond_5c2
    if-eqz v0, :cond_5f3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftApConfiguration() JDM staMac: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {v12}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 462
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v9, 0x0

    .line 463
    invoke-virtual {v8, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move v5, v9

    goto :goto_649

    :cond_5f3
    const/4 v9, 0x0

    .line 467
    invoke-direct {v1, v12, v9}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->convertApMac(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_631

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSoftApConfiguration() staMac: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 471
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 472
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->swm:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-direct {v1, v0, v7, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->saveMacAddressToSoftApConfigStore(Landroid/net/MacAddress;Landroid/net/wifi/SoftApConfiguration;Lcom/samsung/android/wifi/SemWifiManager;)V

    const/4 v5, 0x0

    .line 473
    invoke-virtual {v8, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_649

    :cond_631
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 475
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v7, 0x1

    .line 476
    invoke-virtual {v8, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_649

    :cond_63b
    :goto_63b
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v9, "setSoftApConfiguration() SemWifiChipInfo.getMacAddress is invalid, randomMac will be set in WifiApConfigStore randomizeBssidIfUnset()"

    .line 449
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v8, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 451
    invoke-virtual {v8, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 482
    :goto_649
    invoke-virtual {v8, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const-string v0, "vendor.wifiap.MacAclMode"

    .line 484
    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v5

    if-eqz v5, :cond_682

    .line 486
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->isWifiApMacAclEnabled()Z

    move-result v5

    if-eqz v5, :cond_682

    .line 487
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_673

    .line 488
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_683

    .line 490
    :cond_673
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getInstance()Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApMacAclList;->getWifiApMacAclMode()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_682

    .line 491
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_683

    :cond_682
    const/4 v7, 0x0

    .line 498
    :goto_683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemSoftApConfiguration softap "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nmMAXClients:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mMacAclMode:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nvendorIE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isDualAp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->addMHSDumpLog(Ljava/lang/String;)V

    const-string v0, "vendor.wifiap.guest_mode_enabled"

    .line 501
    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vendor.wifiap.guest_mode_isolation"

    .line 502
    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApGuestModeSupported()Z

    move-result v0

    if-eqz v0, :cond_714

    .line 504
    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_714

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_714

    .line 506
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    if-nez v0, :cond_6f3

    const-string v0, "addsfsd"

    .line 507
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setWifiApGuestPassword(Ljava/lang/String;)V

    goto :goto_6f8

    :cond_6f3
    const-string v0, "Dont reset OTP when resetConfiguration is called"

    .line 509
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f8
    const/4 v2, 0x0

    .line 511
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isResetSoftApCalled:Z

    const-string v0, "vendor.wifiap.guest_mode_enabled"

    .line 512
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vendor.wifiap.guest_mode_passsword"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->isWifiApGuestModeIsolationEnabled()Z

    move-result v0

    if-eqz v0, :cond_714

    const-string v0, "vendor.wifiap.guest_mode_isolation"

    .line 515
    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_714
    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiApGuestModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string p1, "wifi_ap_guest_settings_val"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .registers 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiApGuestModeIsolationEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string p1, "wifi_ap_guest_isolation_settings_val"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .registers 5

    .line 145
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->generateGuestPassword()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemSoftApConfiguration"

    if-eqz p1, :cond_21

    .line 146
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_14

    goto :goto_21

    :cond_14
    const-string v1, "setWifiApGuestPassword is called"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    const-string v0, "wifi_ap_guest_password"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_21
    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in setWifiApGuestPassword:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWifiApMaxClientToFramework(I)V
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmaxclient API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wifi_ap_maxclient_framework"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
