.class public Lcom/android/internal/telephony/SemTelephonyUtils;
.super Ljava/lang/Object;
.source "SemTelephonyUtils.java"


# static fields
.field public static final blacklist AU_CARRIER_ID:I = 0x62d

.field public static final blacklist CCT_CARRIER_ID:I = 0x7f0

.field public static final blacklist CELLCOM_CARRIER_ID:I = 0x70a

.field public static final blacklist CHA_CARRIER_ID:I = 0x84e

.field public static final blacklist CSPIRE_CARRIER_ID:I = 0x72c

.field private static final blacklist FACTORY_SIM_IMSI:[Ljava/lang/String;

.field public static final blacklist FKR_CARRIER_ID:I = 0x862

.field public static final blacklist IS_EXYNOS:Z

.field public static final blacklist IS_PHONE:Z

.field private static final blacklist KOR_DOMESTIC_PROP_FOR_DS:[Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemTelephonyUtils"

.field private static final blacklist NTCTYPE_COUNTRY:I = 0x3

.field private static final blacklist NTCTYPE_LENGTH:I = 0xf

.field private static final blacklist NTCTYPE_MAINOPERATOR:I = 0x0

.field private static final blacklist NTCTYPE_MAX:I = 0x3

.field private static final blacklist NTCTYPE_OPERATORTYPE:I = 0x2

.field private static final blacklist NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final blacklist POVO_CARRIER_ID:I = 0x9d2

.field public static final blacklist RAKUTEN_MNO_CARRIER_ID:I = 0x97d

.field public static final blacklist SHIP_BUILD:Z

.field public static final blacklist UQM_CARRIER_ID:I = 0x83e

.field public static final blacklist USC_CARRIER_ID:I = 0x7a0

.field public static final blacklist VIAERO_CARRIER_ID:I = 0x4a9

.field public static final blacklist VZW_CARRIER_ID:I = 0x72f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 62
    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->IS_PHONE:Z

    .line 63
    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    .line 64
    const-string/jumbo v0, "ro.boot.hardware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->IS_EXYNOS:Z

    .line 143
    const-string v0, "001010123456789"

    const-string v1, "999999999999999"

    const-string v2, "520360110000010"

    const-string v3, "512010123456789"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->FACTORY_SIM_IMSI:[Ljava/lang/String;

    .line 308
    const-string/jumbo v0, "ril.simtype"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->KOR_DOMESTIC_PROP_FOR_DS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpCallStack(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "depth"    # I

    .line 328
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v0, :cond_5

    .line 329
    return-void

    .line 332
    :cond_5
    const/4 v0, 0x0

    .line 333
    .local v0, "i":I
    const/4 v1, 0x4

    .line 335
    .local v1, "START_INDEX":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 336
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    const/4 v4, 0x4

    if-le v3, v4, :cond_14

    .line 337
    const/4 v0, 0x4

    .line 340
    :cond_14
    if-gez p2, :cond_18

    .line 341
    const/4 v0, 0x0

    .line 342
    array-length p2, v2

    .line 345
    :cond_18
    :goto_18
    array-length v3, v2

    if-ge v0, v3, :cond_64

    add-int/lit8 v3, p2, 0x4

    if-ge v0, v3, :cond_64

    .line 346
    aget-object v3, v2, v0

    .line 347
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 349
    :cond_64
    return-void
.end method

.method public static blacklist emergencyControlCommandToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "emergencyControlCommand"    # I

    .line 256
    packed-switch p0, :pswitch_data_48

    .line 267
    const/16 v0, 0xc8

    const-string v1, ")"

    if-lt p0, v0, :cond_30

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_21
    const-string v0, "FAILED(4)"

    return-object v0

    .line 260
    :pswitch_24
    const-string v0, "FINISHED_WITH_ECM(3)"

    return-object v0

    .line 259
    :pswitch_27
    const-string v0, "FINISHED(2)"

    return-object v0

    .line 258
    :pswitch_2a
    const-string v0, "CONNECTED(1)"

    return-object v0

    .line 257
    :pswitch_2d
    const-string v0, "DIALED(0)"

    return-object v0

    .line 271
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static blacklist emergencySearchResultToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "emergencySearchResult"    # I

    .line 244
    packed-switch p0, :pswitch_data_2c

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_1d
    const-string v0, "IGNORE(5)"

    return-object v0

    .line 248
    :pswitch_20
    const-string v0, "NONE(4)"

    return-object v0

    .line 247
    :pswitch_23
    const-string v0, "VOWIFI(3)"

    return-object v0

    .line 246
    :pswitch_26
    const-string v0, "IMS_CALL(2)"

    return-object v0

    .line 245
    :pswitch_29
    const-string v0, "CS(1)"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist getCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getKorDomesticPropForDS(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->KOR_DOMESTIC_PROP_FOR_DS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 314
    if-gtz p1, :cond_12

    move-object v0, p0

    goto :goto_23

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    .line 316
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMainOperator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "ntcType"    # I

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "---"

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_22

    const/4 v0, 0x3

    if-le p1, v0, :cond_14

    goto :goto_22

    .line 74
    :cond_14
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "ntcValue":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1f

    .line 76
    return-object v1

    .line 79
    :cond_1f
    aget-object v1, v0, p1

    return-object v1

    .line 71
    .end local v0    # "ntcValue":[Ljava/lang/String;
    :cond_22
    :goto_22
    return-object v1
.end method

.method public static blacklist getOperatorType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStackTraceLog(I)Ljava/lang/String;
    .registers 4
    .param p0, "dumpIndex"    # I

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 321
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_10

    .line 322
    array-length v1, v0

    add-int/lit8 p0, v1, -0x1

    .line 324
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSubOperator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist internalAttributeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "internalAttribute"    # I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 278
    const-string v1, "ON_EMERGENCY_SEARCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_11
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 281
    const-string v1, "SKIP_EMERGENCY_SEARCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_25

    .line 284
    const-string v1, "START_DURING_VOLTE_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_25
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 287
    const-string v1, "TRIGGER_E911_START_DAN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_30
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3b

    .line 290
    const-string v1, "PREPARE_CS_ONLY_DAN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_3b
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_46

    .line 293
    const-string v1, "MIGRATE_FROM_IMSPHONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_46
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_51

    .line 296
    const-string v1, "USE_ASSISTED_DIALING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_51
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_5c

    .line 299
    const-string v1, "FALLBACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_5c
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_67

    .line 302
    const-string v1, "IS_MULTIPARTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_67
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isChnGlobalModel(Ljava/lang/String;)Z
    .registers 4
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isGlobalModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isCountrySpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static varargs blacklist isCountrySpecific(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "countries"    # [Ljava/lang/String;

    .line 125
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "countryName":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 128
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 132
    :cond_16
    return v2
.end method

.method public static blacklist isFactorySim(Ljava/lang/String;)Z
    .registers 2
    .param p0, "imsi"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->FACTORY_SIM_IMSI:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 152
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isGlobalModel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getOperatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isMainOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "mainOperators"    # [Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "mainOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 102
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 103
    const/4 v1, 0x1

    return v1

    .line 101
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 106
    :cond_16
    return v2
.end method

.method public static blacklist isSilentRedial(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "intentExtras"    # Landroid/os/Bundle;

    .line 219
    if-eqz p0, :cond_1b

    .line 220
    const-string/jumbo v0, "latestDomain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "callDomain":Ljava/lang/String;
    const-string v1, "PS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "CS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 222
    :cond_19
    const/4 v1, 0x1

    return v1

    .line 225
    .end local v0    # "callDomain":Ljava/lang/String;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSilentRedialFromCs(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "intentExtras"    # Landroid/os/Bundle;

    .line 236
    if-eqz p0, :cond_13

    const-string/jumbo v0, "latestDomain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSilentRedialFromPs(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "intentExtras"    # Landroid/os/Bundle;

    .line 229
    if-eqz p0, :cond_13

    const-string/jumbo v0, "latestDomain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist isSubOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "subOperators"    # [Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getSubOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "subOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 113
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 114
    const/4 v1, 0x1

    return v1

    .line 112
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 117
    :cond_16
    return v2
.end method

.method public static blacklist isUsaGlobalModel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 136
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isGlobalModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static blacklist maskPii(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "pii"    # Ljava/lang/Object;

    .line 162
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v0, :cond_7

    const-string v0, "<MASKED>"

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist maskPiiFromCellIdentity(I)Ljava/lang/String;
    .registers 2
    .param p0, "pii"    # I

    .line 180
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_15

    if-eqz p0, :cond_15

    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_c

    goto :goto_15

    .line 181
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_15
    :goto_15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist maskPiiFromCellIdentity(J)Ljava/lang/String;
    .registers 4
    .param p0, "pii"    # J

    .line 188
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_14

    goto :goto_1d

    .line 189
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1d
    :goto_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist maskPiiFromNumber(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "pii"    # Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 203
    .local v1, "numLen":I
    const/4 v2, 0x5

    if-le v1, v2, :cond_13

    const/4 v2, 0x3

    goto :goto_15

    :cond_13
    div-int/lit8 v2, v1, 0x2

    .line 204
    .local v2, "remainLen":I
    :goto_15
    div-int/lit8 v3, v2, 0x2

    .line 206
    .local v3, "startRemainLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 208
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_2d

    .line 209
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 211
    .end local v5    # "i":I
    :cond_2d
    sub-int v5, v2, v3

    sub-int v5, v1, v5

    invoke-virtual {v4, v0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 215
    .end local v1    # "numLen":I
    .end local v2    # "remainLen":I
    .end local v3    # "startRemainLen":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_39
    return-object v0
.end method

.method public static blacklist maskPiiFromVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "voiceMailNumber"    # Ljava/lang/String;

    .line 169
    move-object v0, p0

    .line 170
    .local v0, "number":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v1, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "*86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_2b
    return-object v0
.end method
