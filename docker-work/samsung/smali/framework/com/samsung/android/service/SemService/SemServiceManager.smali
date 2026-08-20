.class public final Lcom/samsung/android/service/SemService/SemServiceManager;
.super Ljava/lang/Object;
.source "SemServiceManager.java"


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist ERROR_ADD_DEL_LIST:I = -0x10

.field public static final blacklist ERROR_BOOT_DEACT:I = -0x11

.field public static final blacklist ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final blacklist ERROR_DATA:I = -0xd

.field public static final blacklist ERROR_DEACTIVATION:I = -0x12

.field public static final blacklist ERROR_EXCEPTION:I = -0x5a

.field public static final blacklist ERROR_FACTORY_ERROR:I = -0xa

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0xa

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x5b

.field public static final blacklist ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

.field public static final blacklist ERROR_NO_SERVICE:I = -0x5c

.field public static final blacklist ERROR_SELECT_ERROR:I = -0xb

.field public static final blacklist ERROR_SEND_ERROR:I = -0xc

.field public static final blacklist ERROR_UNSAT_LINK:I = -0x3

.field public static final blacklist ESESTATUS_BUSY:I = -0xc8

.field public static final blacklist ESESTATUS_NOT_SUPPORTED:I = -0x64

.field private static final blacklist HEX_CHARS:[C

.field private static final blacklist MAX_CAPDU_SIZE:I = 0x10009

.field private static final blacklist MAX_RAPDU_SIZE:I = 0x10002

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist NO_ERROR_SPI:I = 0x0

.field public static final blacklist SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final blacklist SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_ServiceManager"

.field private static final blacklist isSupportSemService:Z = false

.field private static final blacklist normalSpi_Flag:I = 0x0

.field private static final blacklist secureSpi_Flag:I = 0x1


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSemService:Lcom/samsung/android/service/SemService/ISemService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->AIDDeactivation(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/SemService/SemServiceManager;->parseList([BI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method private blacklist AIDDeactivation(Ljava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1018
    .local p1, "AID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1019
    .local v0, "deactivationListCmd":[B
    const/4 v1, 0x0

    .line 1020
    .local v1, "baRsp":[B
    const/4 v2, 0x0

    .line 1021
    .local v2, "baRspLen":I
    const/4 v3, 0x0

    .line 1022
    .local v3, "failFlag":I
    const-string v4, "80F80002"

    .line 1025
    .local v4, "strDeactivationListCmd":Ljava/lang/String;
    const-string v5, "SEC_ESE_ServiceManager"

    const-string v6, "SemService is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/16 v5, -0x5c

    return v5
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # B

    .line 1855
    const/4 v0, 0x2

    new-array v0, v0, [C

    sget-object v1, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 1856
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B

    .line 1844
    if-eqz p0, :cond_32

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_32

    .line 1846
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 1847
    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_2c

    .line 1848
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 1849
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1847
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1851
    .end local v2    # "i":I
    :cond_2c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1845
    .end local v0    # "chars":[C
    :cond_32
    :goto_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist hexToBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 1860
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1861
    return-object v0

    .line 1862
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 1863
    return-object v0

    .line 1865
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    .line 1866
    .local v0, "len":I
    new-array v1, v0, [B

    .line 1867
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_2b

    .line 1868
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1867
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1870
    .end local v3    # "i":I
    :cond_2b
    return-object v1
.end method

.method private blacklist isSupportEsek()Z
    .registers 6

    .line 179
    const-string/jumbo v0, "ro.security.ese.support_esek"

    .line 181
    .local v0, "esekSupportProp":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "propValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_1a

    if-nez v3, :cond_17

    goto :goto_19

    .line 185
    :cond_17
    const/4 v1, 0x1

    return v1

    .line 183
    :cond_19
    :goto_19
    return v1

    .line 187
    .end local v2    # "propValue":Ljava/lang/String;
    :catch_1a
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get sysProp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEC_ESE_ServiceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v1
.end method

.method private blacklist parseList([BI)Ljava/util/ArrayList;
    .registers 9
    .param p1, "respAid"    # [B
    .param p2, "respAidLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1151
    const/4 v0, 0x0

    const-string v1, "SEC_ESE_ServiceManager"

    if-nez p1, :cond_b

    .line 1152
    const-string v2, "parse list aid null error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-object v0

    .line 1157
    :cond_b
    const/4 v2, 0x0

    .line 1158
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 1160
    .local v3, "tempLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v4, "tempStr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "SemService is not supported"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-object v0
.end method


# virtual methods
.method public blacklist COSSPIAccessControl(I)I
    .registers 4
    .param p1, "type"    # I

    .line 2012
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "COSSPIAccessControl() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist accessControlForCOSU(I)I
    .registers 3
    .param p1, "type"    # I

    .line 1392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 11
    .param p1, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 583
    .local p2, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 585
    .local v0, "ret":I
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_16

    .line 587
    .local v1, "selectSCRSCmd":[B
    const/4 v2, 0x0

    .line 588
    .local v2, "baRsp":[B
    const/4 v3, 0x0

    .line 589
    .local v3, "baRspLen":I
    const/4 v4, 0x0

    .line 590
    .local v4, "strAddListCmd":Ljava/lang/String;
    const/4 v5, 0x0

    .line 593
    .local v5, "isOpen":Z
    const-string v6, "SEC_ESE_ServiceManager"

    const-string v7, "SemService is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v6, -0x5c

    return v6

    :array_16
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data
.end method

.method public blacklist checkSeState([B[B)I
    .registers 5
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B

    .line 1610
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "checkSeState() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist close()I
    .registers 3

    .line 1439
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "close() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist close(I)I
    .registers 4
    .param p1, "flag"    # I

    .line 1551
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "close() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist closeSpi(I)I
    .registers 4
    .param p1, "flag"    # I

    .line 1933
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "closeSpi() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist continueattestation(Ljava/lang/String;I[B)I
    .registers 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B

    .line 1246
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "continueattestation() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist deactivateCards(I[Ljava/lang/String;[II)I
    .registers 7
    .param p1, "RequestType"    # I
    .param p2, "package_name"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I

    .line 433
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "deactivateCards is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist deactivateCardsAID(II[Ljava/lang/String;[II)I
    .registers 8
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_name"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I

    .line 460
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "deactivateCardsAID is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 14
    .param p1, "inputFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 690
    .local p2, "inputAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x16800

    .line 691
    .local v0, "listByteSize":I
    const-string v1, "02"

    .line 692
    .local v1, "AID_DEACTIVATION_FLAG":Ljava/lang/String;
    const-string v2, "03"

    .line 693
    .local v2, "AID_DEACTIVATION_FLAG_BOOT":Ljava/lang/String;
    const-string v3, "01"

    .line 695
    .local v3, "ALL_DEACTIVATION_FLAG":Ljava/lang/String;
    move-object v4, p1

    .line 696
    .local v4, "flag":Ljava/lang/String;
    move-object v5, p2

    .line 699
    .local v5, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "com.sec.action.CDA_FINISH"

    .line 700
    .local v6, "ACTION_CDA_FINISH":Ljava/lang/String;
    const-string v7, "com.sec.action.CDA_VALUE"

    .line 701
    .local v7, "VALUE_CDA_FINISH":Ljava/lang/String;
    const/4 v8, 0x1

    .line 704
    .local v8, "ACTION_VALUE_CDA_FINISH":I
    const-string v9, "SEC_ESE_ServiceManager"

    const-string v10, "SemService is not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/16 v9, -0x5c

    return v9
.end method

.method public blacklist eSEFactoryReset()I
    .registers 3

    .line 1071
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "eSEFactoryReset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist eSEFullFactoryReset()I
    .registers 3

    .line 1125
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "eSEFullFactoryReset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist eSELowFactoryReset()I
    .registers 3

    .line 1098
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "eSELowFactoryReset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist esekCertificateCheck()I
    .registers 3

    .line 195
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "esekCertificateCheck() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_15

    .line 198
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v0, -0xa

    return v0

    .line 203
    :cond_15
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist getAtr()I
    .registers 3

    .line 1365
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getAtr() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .registers 3

    .line 133
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getCPLC14mode() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHQMMemory([B)I
    .registers 4
    .param p1, "hw_memory_data"    # [B

    .line 405
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getHQMMemory() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist getPK([B)I
    .registers 4
    .param p1, "rspData"    # [B

    .line 1274
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getPK() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSCRSVersion()I
    .registers 10

    .line 487
    const/4 v0, -0x1

    .line 488
    .local v0, "ret":I
    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_1c

    .line 490
    .local v1, "selectSCRSCmd":[B
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_28

    .line 491
    .local v2, "getVersionCmd":[B
    const/4 v3, 0x0

    .line 492
    .local v3, "baRsp":[B
    const/4 v4, 0x0

    .line 493
    .local v4, "baRspLen":I
    const/4 v5, 0x0

    .line 494
    .local v5, "scrsVersion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 497
    .local v6, "isOpen":Z
    const-string v7, "SEC_ESE_ServiceManager"

    const-string v8, "SemService is not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v7, -0x5c

    return v7

    :array_1c
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x80t
        -0x36t
        0x0t
        -0x10t
        0x0t
    .end array-data
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .registers 3

    .line 108
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "get_ESEA() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grdmCheckRestrictedMode()Ljava/lang/String;
    .registers 3

    .line 1790
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmCheckRestrictedMode() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grdmCheckStatus()I
    .registers 3

    .line 1816
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmCheckStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist grdmGetAttesCert(I[B)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "rspData"    # [B

    .line 1764
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmGetAttesCert() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist grdmGetSession()I
    .registers 3

    .line 1686
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmGetSession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist grdmReleaseSession()I
    .registers 3

    .line 1738
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmReleaseSession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist grdmRequestKey(I[B)I
    .registers 5
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B

    .line 1712
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmRequestKey() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist injectEsesmKeyset()I
    .registers 3

    .line 257
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "injectEsesmKeyset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_15

    .line 260
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v0, -0xa

    return v0

    .line 265
    :cond_15
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist isConnected()Z
    .registers 3

    .line 96
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEseSupported()Z
    .registers 3

    .line 1876
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "isEseSupported() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLccmSwp()I
    .registers 3

    .line 380
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist isOpened()Z
    .registers 4

    .line 1456
    const/4 v0, -0x1

    .line 1458
    .local v0, "result":I
    const-string v1, "SEC_ESE_ServiceManager"

    const-string v2, "isOpened() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v2, "SemService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist jniICD()I
    .registers 4

    .line 1188
    const/16 v0, -0x3e7

    .line 1191
    .local v0, "icdResult":I
    const-string v1, "SEC_ESE_ServiceManager"

    const-string v2, "SemService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/16 v1, -0x5c

    return v1
.end method

.method public blacklist open()I
    .registers 3

    .line 1427
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "open() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist open(I)I
    .registers 4
    .param p1, "flag"    # I

    .line 1540
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "open() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist openSpi(I)I
    .registers 4
    .param p1, "flag"    # I

    .line 1907
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "openSpi() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist resetForCOSU(I)I
    .registers 5
    .param p1, "type"    # I

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetForCOSU is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, -0x1

    .line 1406
    .local v0, "result":I
    const-string v2, "SemService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/16 v1, -0x5c

    return v1
.end method

.method public blacklist scp11CertificateCheck()I
    .registers 3

    .line 226
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "scp11CertificateCheck() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_16

    .line 229
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v0, -0xa

    return v0

    .line 234
    :cond_16
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist semFactory()V
    .registers 3

    .line 158
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "semFactory() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public blacklist sem_handleCCM([BI)[Ljava/lang/String;
    .registers 5
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 321
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sem_handleCCM() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sem_handleCCMCB([BI[BI)[Ljava/lang/String;
    .registers 9
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I

    .line 346
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sem_handleCCMCB() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "ccmData0103":[B
    const/4 v2, 0x0

    .line 351
    .local v2, "ret":[Ljava/lang/String;
    const-string v3, "SemService is not supported"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist send([B)[B
    .registers 4
    .param p1, "baCmd"    # [B

    .line 1492
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "send() for SE API is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist send([BI)[B
    .registers 5
    .param p1, "baCmd"    # [B
    .param p2, "flag"    # I

    .line 1562
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "send() for normal/secure SPI is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendData([BI[B)I
    .registers 6
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B

    .line 1986
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sendData() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist sendData([BI[BI)I
    .registers 7
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I

    .line 1960
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sendData() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist sercureLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 1279
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "SecureLog() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method public blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
    .registers 7
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B

    .line 1636
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "startRequestCredentials() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist startSLOG()V
    .registers 3

    .line 1307
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "START SLOG is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    return-void
.end method

.method public blacklist startattestation([BI[BI)I
    .registers 7
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I

    .line 1218
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "startattestation() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist stopRequestCredentials()V
    .registers 3

    .line 1662
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "stopRequestCredentials() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void
.end method

.method public blacklist stopSLOG()V
    .registers 3

    .line 1335
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "STOP SLOG is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method

.method public blacklist verifyEsesmKeyset()I
    .registers 3

    .line 288
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "verifyEsesmKeyset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_16

    .line 291
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v0, -0xa

    return v0

    .line 296
    :cond_16
    const-string v1, "SemService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v0, -0x5c

    return v0
.end method
