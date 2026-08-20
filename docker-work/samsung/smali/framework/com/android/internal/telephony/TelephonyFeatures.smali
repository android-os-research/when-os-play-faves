.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field public static final blacklist DUALSIM_WITH_ONE_SLOT_NR:I = 0x1

.field public static final blacklist DUALSIM_WITH_TWO_SLOT_NR:I = 0x2

.field public static final blacklist IS_PHONE:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final blacklist MULTI_SIM_CONFIG:Ljava/lang/String;

.field public static final blacklist NO_DUALSIM_NR_MODEL:I = 0x0

.field public static final blacklist NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING:I = 0x5

.field public static final blacklist NTC_FEATURE_BLOCK_NETMODE_CHANGE_WITH_CARRIER_CONFIG_CHANGED:I = 0xe

.field public static final blacklist NTC_FEATURE_CHECK_OPPOSITE_SLOT_NETMODE_BEFORE_CHANGE:I = 0xf

.field public static final blacklist NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x2

.field public static final blacklist NTC_FEATURE_DISPLAY_RESCAN_DIALOG:I = 0xc

.field public static final blacklist NTC_FEATURE_DISPLAY_TOAST_AFTER_RTT_E911_FAILED:I = 0xb

.field public static final blacklist NTC_FEATURE_ERI_ON_AP:I = 0x4

.field public static final blacklist NTC_FEATURE_ERI_ON_CP:I = 0x3

.field public static final blacklist NTC_FEATURE_FORCELY_SET_2G_ENABLED:I = 0x14

.field public static final blacklist NTC_FEATURE_FORCELY_SET_3G_4G_ENABLED:I = 0x16

.field public static final blacklist NTC_FEATURE_FORCELY_SET_DEFAULT_ENABLED:I = 0x17

.field public static final blacklist NTC_FEATURE_IS_3G_NOT_ALLOWED_OPERATOR:I = 0x10

.field public static final blacklist NTC_FEATURE_MAX:I = 0x18

.field public static final blacklist NTC_FEATURE_REDIAL_CS_AFTER_RADIO_ON:I = 0x15

.field public static final blacklist NTC_FEATURE_RESUME_HELD_CALL_AFTER_MO_FAIL:I = 0x12

.field public static final blacklist NTC_FEATURE_RESUME_HELD_CALL_IF_BG_ONLY:I = 0x13

.field public static final blacklist NTC_FEATURE_RETRY_EMERGENCY_SEARCH_IN_ALERTING:I = 0x11

.field public static final blacklist NTC_FEATURE_SET_CLIR_TO_BOTH_SIDES:I = 0xd

.field public static final blacklist NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x1

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ECBM:I = 0x8

.field public static final blacklist NTC_FEATURE_SUPPORT_IMSCALL_ONLY:I = 0x7

.field public static final blacklist NTC_FEATURE_UPDATE_ADDRESS_FOR_CALL_CONTROL:I = 0xa

.field public static final blacklist NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS:I = 0x6

.field public static final blacklist NTC_FEATURE_USE_SECOND_TTY_MODE_IN_DUAL_SIM:I = 0x9

.field public static final blacklist PRIMARY_PHONE_ID:I = 0x0

.field private static final blacklist PROJECT_SIM_NUM:I

.field public static final blacklist SALES_CODE:Ljava/lang/String;

.field public static final blacklist SECONDARY_PHONE_ID:I = 0x1

.field public static final blacklist SHIP_BUILD:Z

.field private static blacklist mNetworkCode:Ljava/lang/String;

.field private static blacklist mNetworkCode2:Ljava/lang/String;

.field private static blacklist mSalesCode:Ljava/lang/String;

.field private static blacklist mSimHotswapSupported:Z

.field private static blacklist mSimbasedChangeType:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 55
    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    .line 56
    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    .line 57
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ro.csc.omcnw_code"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    .line 114
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    .line 115
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ro.csc.omcnw_code2"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    .line 117
    sput-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    .line 118
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist InitializeSimbasedType()V
    .registers 7

    .line 124
    const-string/jumbo v0, "ro.simbased.changetype"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "changeType":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    .line 126
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2d

    array-length v6, v2

    if-ge v6, v3, :cond_1a

    goto :goto_2d

    .line 131
    :cond_1a
    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    .line 132
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_37

    .line 127
    :cond_2d
    :goto_2d
    new-array v2, v3, [Ljava/lang/String;

    sput-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    .line 128
    aput-object v1, v2, v5

    .line 129
    const-string v1, "DISABLED"

    aput-object v1, v2, v4

    .line 134
    :goto_37
    return-void
.end method

.method public static blacklist dump(I)V
    .registers 4
    .param p0, "phoneId"    # I

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- TelephonyFeatures.dump("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getMainOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSubOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getOperatorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCountryName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS_PHONE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHIP_BUILD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MULTI_SIM_CONFIG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSalesCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getNetworkCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_104
    const/16 v1, 0x18

    if-ge v0, v1, :cond_133

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getNtcFeature("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->featureToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_104

    .line 554
    .end local v0    # "i":I
    :cond_133
    return-void
.end method

.method private static blacklist featureToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "ntcFeature"    # I

    .line 557
    packed-switch p0, :pswitch_data_62

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown NTC_FEATURE("

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

    .line 603
    :pswitch_1d
    const-string v0, "NTC_FEATURE_FORCELY_SET_DEFAULT_ENABLED"

    return-object v0

    .line 601
    :pswitch_20
    const-string v0, "NTC_FEATURE_FORCELY_SET_3G_4G_ENABLED"

    return-object v0

    .line 599
    :pswitch_23
    const-string v0, "NTC_FEATURE_REDIAL_CS_AFTER_RADIO_ON"

    return-object v0

    .line 597
    :pswitch_26
    const-string v0, "NTC_FEATURE_FORCELY_SET_2G_ENABLED"

    return-object v0

    .line 595
    :pswitch_29
    const-string v0, "NTC_FEATURE_RESUME_HELD_CALL_IF_BG_ONLY"

    return-object v0

    .line 593
    :pswitch_2c
    const-string v0, "NTC_FEATURE_RESUME_HELD_CALL_AFTER_MO_FAIL"

    return-object v0

    .line 591
    :pswitch_2f
    const-string v0, "NTC_FEATURE_RETRY_EMERGENCY_SEARCH_IN_ALERTING"

    return-object v0

    .line 589
    :pswitch_32
    const-string v0, "NTC_FEATURE_IS_3G_NOT_ALLOWED_OPERATOR"

    return-object v0

    .line 587
    :pswitch_35
    const-string v0, "NTC_FEATURE_CHECK_OPPOSITE_SLOT_NETMODE_BEFORE_CHANGE"

    return-object v0

    .line 585
    :pswitch_38
    const-string v0, "NTC_FEATURE_BLOCK_NETMODE_CHANGE_WITH_CARRIER_CONFIG_CHANGED"

    return-object v0

    .line 583
    :pswitch_3b
    const-string v0, "NTC_FEATURE_SET_CLIR_TO_BOTH_SIDES"

    return-object v0

    .line 581
    :pswitch_3e
    const-string v0, "NTC_FEATURE_DISPLAY_RESCAN_DIALOG"

    return-object v0

    .line 579
    :pswitch_41
    const-string v0, "NTC_FEATURE_DISPLAY_TOAST_AFTER_RTT_E911_FAILED"

    return-object v0

    .line 577
    :pswitch_44
    const-string v0, "NTC_FEATURE_UPDATE_ADDRESS_FOR_CALL_CONTROL"

    return-object v0

    .line 575
    :pswitch_47
    const-string v0, "NTC_FEATURE_USE_SECOND_TTY_MODE_IN_DUAL_SIM"

    return-object v0

    .line 573
    :pswitch_4a
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ECBM"

    return-object v0

    .line 571
    :pswitch_4d
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ONLY"

    return-object v0

    .line 569
    :pswitch_50
    const-string v0, "NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS"

    return-object v0

    .line 567
    :pswitch_53
    const-string v0, "NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING"

    return-object v0

    .line 565
    :pswitch_56
    const-string v0, "NTC_FEATURE_ERI_ON_AP"

    return-object v0

    .line 563
    :pswitch_59
    const-string v0, "NTC_FEATURE_ERI_ON_CP"

    return-object v0

    .line 561
    :pswitch_5c
    const-string v0, "NTC_FEATURE_CSC_SPRINT_CHAMELEON"

    return-object v0

    .line 559
    :pswitch_5f
    const-string v0, "NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING"

    return-object v0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist getCountryName(I)Ljava/lang/String;
    .registers 5
    .param p0, "phoneId"    # I

    .line 154
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getMainOperatorName(I)Ljava/lang/String;
    .registers 5
    .param p0, "phoneId"    # I

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getNetworkCode(I)Ljava/lang/String;
    .registers 2
    .param p0, "phoneId"    # I

    .line 169
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    :goto_8
    return-object v0
.end method

.method public static blacklist getNotAllowedNetworkMode(I)Ljava/lang/String;
    .registers 5
    .param p0, "phoneId"    # I

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_NotAllowedNetworkMode"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "mNotAllowedNetworkMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNotAllowedNetworkMode() feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyFeatures"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v0
.end method

.method public static blacklist getNtcFeature(II)Z
    .registers 24
    .param p0, "phoneId"    # I
    .param p1, "ntcFeature"    # I

    .line 173
    move/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "0"

    const-string v3, "BMC"

    const-string v4, "ATT"

    const-string v5, "TMO"

    const-string v6, "LTN"

    const-string v7, "CAN"

    const-string v8, "USA"

    const-string v9, "KOR"

    const-string v10, "CHN"

    const-string v11, "XAA"

    const-string v12, "DSG"

    const-string v14, "USC"

    const-string v15, "VZW"

    const-string v13, "SPR"

    move-object/from16 v16, v11

    const/4 v11, 0x1

    packed-switch v1, :pswitch_data_2a2

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown NTC feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto/16 :goto_29f

    .line 304
    :pswitch_3e
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 305
    return v11

    .line 299
    :pswitch_49
    const-string v2, "TMB"

    const-string v3, "TMK"

    const-string v4, "ASR"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 300
    return v11

    .line 291
    :pswitch_5a
    const-string v16, "21901"

    const-string v17, "23001"

    const-string v18, "26001"

    const-string v19, "26006"

    const-string v20, "26012"

    const-string v21, "26098"

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 292
    return v11

    .line 293
    :cond_71
    const-string v2, "ICE"

    const-string v3, "IUS"

    const-string v4, "MNX"

    filled-new-array {v6, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    const-string v3, "732101"

    const-string v4, "70401"

    const-string v5, "70601"

    const-string v6, "71403"

    const-string v7, "71203"

    const-string v8, "708001"

    const-string v9, "71021"

    const-string v10, "732123"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 295
    return v11

    .line 286
    :pswitch_9c
    sget v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v3, 0x21

    if-ge v2, v3, :cond_29f

    const-string v2, "APP"

    const-string v3, "AIO"

    const-string v5, "TFC"

    filled-new-array {v4, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 287
    return v11

    .line 279
    :pswitch_b3
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d9

    const-string v2, "TGY"

    const-string v3, "KDI"

    filled-new-array {v15, v13, v14, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d9

    const-string v2, "COD"

    const-string v3, "COB"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 282
    :cond_d9
    return v11

    .line 277
    :pswitch_da
    return v11

    .line 272
    :pswitch_db
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 273
    return v11

    .line 266
    :pswitch_e6
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    const-string v3, "XXV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fa

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    const-string v3, "XEV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_106

    :cond_fa
    const-string v2, "45204"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_110

    .line 267
    :cond_106
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNotAllowedNetworkMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29f

    .line 268
    :cond_110
    return v11

    .line 260
    :pswitch_111
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->support_dual_rat()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v11, v2, :cond_29f

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 262
    return v11

    .line 250
    :pswitch_12c
    sget v3, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    if-le v3, v11, :cond_13f

    const-string v4, "HKG"

    const-string v5, "TPE"

    filled-new-array {v10, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 251
    return v11

    .line 252
    :cond_13f
    if-le v3, v11, :cond_29f

    const-string v3, "INU"

    const-string v4, "INS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29f

    .line 253
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->support_dual_rat()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, "dualrat":I
    if-eq v2, v11, :cond_16a

    if-nez v2, :cond_168

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v3

    if-nez v3, :cond_168

    goto :goto_16a

    .line 257
    .end local v2    # "dualrat":I
    :cond_168
    goto/16 :goto_29f

    .line 255
    .restart local v2    # "dualrat":I
    :cond_16a
    :goto_16a
    return v11

    .line 248
    .end local v2    # "dualrat":I
    :pswitch_16b
    return v11

    .line 243
    :pswitch_16c
    filled-new-array {v4, v5, v3, v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 244
    return v11

    .line 238
    :pswitch_177
    move-object/from16 v2, v16

    filled-new-array {v5, v2, v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 239
    return v11

    .line 233
    :pswitch_184
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 234
    return v11

    .line 228
    :pswitch_18f
    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    if-ne v0, v11, :cond_29f

    .line 229
    return v11

    .line 217
    :pswitch_19c
    filled-new-array {v15, v14, v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 218
    invoke-static {}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->sim_mobility()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 219
    .local v2, "isSimMobility":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "simCountry":Ljava/lang/String;
    if-eqz v2, :cond_1f0

    const-string/jumbo v4, "us"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f0

    const-string/jumbo v4, "pr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f0

    const-string/jumbo v4, "vi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f0

    .line 221
    const-string v4, "No ECBM (Reason: SimMobility)"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 225
    .end local v2    # "isSimMobility":Z
    .end local v3    # "simCountry":Ljava/lang/String;
    goto/16 :goto_29f

    .line 223
    .restart local v2    # "isSimMobility":Z
    .restart local v3    # "simCountry":Ljava/lang/String;
    :cond_1f0
    return v11

    .line 211
    .end local v2    # "isSimMobility":Z
    .end local v3    # "simCountry":Ljava/lang/String;
    :pswitch_1f1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    if-eqz v2, :cond_29f

    .line 212
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Softphone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 213
    return v11

    .line 203
    :pswitch_20a
    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 204
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v3, "CarrierFeature_RIL_DisableEons"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v11}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 205
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v2

    const-string v3, "CarrierFeature_RIL_ReferEonsWithoutLac"

    invoke-virtual {v2, v0, v3, v4, v11}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_237

    .line 206
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 207
    :cond_237
    return v11

    .line 198
    :pswitch_238
    filled-new-array {v15, v13, v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 199
    return v11

    .line 193
    :pswitch_243
    move-object/from16 v2, v16

    filled-new-array {v13, v14, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 194
    return v11

    .line 187
    :pswitch_250
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 188
    return v11

    .line 180
    :pswitch_25b
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_293

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_293

    .line 182
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XAS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_293

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPRPRE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 183
    :cond_293
    return v11

    .line 175
    :pswitch_294
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 176
    return v11

    .line 313
    :cond_29f
    :goto_29f
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_2a2
    .packed-switch 0x1
        :pswitch_294
        :pswitch_25b
        :pswitch_250
        :pswitch_243
        :pswitch_238
        :pswitch_20a
        :pswitch_1f1
        :pswitch_19c
        :pswitch_18f
        :pswitch_184
        :pswitch_177
        :pswitch_16c
        :pswitch_16b
        :pswitch_12c
        :pswitch_111
        :pswitch_e6
        :pswitch_db
        :pswitch_da
        :pswitch_b3
        :pswitch_9c
        :pswitch_5a
        :pswitch_49
        :pswitch_3e
    .end packed-switch
.end method

.method public static blacklist getOperatorType(I)Ljava/lang/String;
    .registers 5
    .param p0, "phoneId"    # I

    .line 149
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getOperatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getPropertyMultiSimBased(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 501
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    goto :goto_21

    .line 506
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    if-nez p1, :cond_19

    .line 509
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 511
    :cond_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 502
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_21
    :goto_21
    const-string v0, "Property is wrong"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSalesCode()Ljava/lang/String;
    .registers 1

    .line 165
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSimbasedChangeType()Ljava/lang/String;
    .registers 2

    .line 494
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    .line 495
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    .line 497
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getSubOperatorName(I)Ljava/lang/String;
    .registers 5
    .param p0, "phoneId"    # I

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "ntcRawData":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getSubOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 529
    .local p1, "prop":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 530
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    if-ltz p0, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_d

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 531
    :cond_d
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    move-object v1, p2

    :goto_12
    return-object v1
.end method

.method public static blacklist isChnGlobalModel()Z
    .registers 1

    .line 321
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isChnGlobalModel(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 325
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static varargs blacklist isCountrySpecific(I[Ljava/lang/String;)Z
    .registers 8
    .param p0, "phoneId"    # I
    .param p1, "countries"    # [Ljava/lang/String;

    .line 359
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "country":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 362
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 363
    const/4 v1, 0x1

    return v1

    .line 361
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 366
    :cond_16
    return v2
.end method

.method public static blacklist isGCFMode(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 450
    const-string/jumbo v0, "persist.radio.gcfmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "gcfMode":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    :goto_21
    return v1
.end method

.method public static blacklist isGlobalModel(I)Z
    .registers 3
    .param p0, "phoneId"    # I

    .line 329
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .registers 8
    .param p0, "phoneId"    # I
    .param p1, "numeric"    # [Ljava/lang/String;

    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "iccOperatorNumeric":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1a

    aget-object v4, p1, v3

    .line 405
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 406
    const/4 v1, 0x1

    return v1

    .line 404
    .end local v4    # "x":Ljava/lang/String;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 409
    :cond_1a
    return v2
.end method

.method public static blacklist isKorSimInKorDevice(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 517
    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 518
    return v1

    .line 521
    :cond_e
    const-string/jumbo v0, "ril.simtype"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "simType":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_31

    .line 525
    :cond_30
    return v1

    .line 523
    :cond_31
    :goto_31
    const/4 v1, 0x1

    return v1
.end method

.method public static varargs blacklist isMainOperatorSpecific(I[Ljava/lang/String;)Z
    .registers 8
    .param p0, "phoneId"    # I
    .param p1, "mainOperators"    # [Ljava/lang/String;

    .line 337
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "mainOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 340
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 341
    const/4 v1, 0x1

    return v1

    .line 339
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 344
    :cond_16
    return v2
.end method

.method public static varargs blacklist isNetworkCodeSpecific(I[Ljava/lang/String;)Z
    .registers 8
    .param p0, "phoneId"    # I
    .param p1, "networkCodes"    # [Ljava/lang/String;

    .line 381
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_21

    aget-object v3, p1, v2

    .line 382
    .local v3, "x":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_13

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 383
    return v4

    .line 384
    :cond_13
    if-eq p0, v4, :cond_1e

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 385
    return v4

    .line 381
    .end local v3    # "x":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 388
    :cond_21
    return v1
.end method

.method public static blacklist isNotAllowedMOCall(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 392
    const-string/jumbo v0, "ro.boot.carrierid"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "carrierId":Ljava/lang/String;
    const-string v1, "AIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "52001"

    const-string v2, "52003"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 395
    const-string v1, "Non AIS carrier. BLOCKED MO Call"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x1

    return v1

    .line 398
    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isOneTray()Z
    .registers 3

    .line 483
    const-string v0, "1"

    .line 484
    .local v0, "trayCount":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 485
    const-string/jumbo v1, "ril.simslottype2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "sim2Path":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 487
    const/4 v2, 0x1

    return v2

    .line 490
    .end local v1    # "sim2Path":Ljava/lang/String;
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public static varargs blacklist isSalesCodeSpecific([Ljava/lang/String;)Z
    .registers 7
    .param p0, "salesCodes"    # [Ljava/lang/String;

    .line 370
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "salesCode":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    .line 373
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 374
    const/4 v1, 0x1

    return v1

    .line 372
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 377
    :cond_16
    return v2
.end method

.method public static blacklist isSimHotswapSupported()Z
    .registers 1

    .line 333
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    return v0
.end method

.method public static varargs blacklist isSubOperatorSpecific(I[Ljava/lang/String;)Z
    .registers 8
    .param p0, "phoneId"    # I
    .param p1, "subOperators"    # [Ljava/lang/String;

    .line 348
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "subOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 351
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 352
    const/4 v1, 0x1

    return v1

    .line 350
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 355
    :cond_16
    return v2
.end method

.method public static blacklist isUsaGlobalModel(I)Z
    .registers 3
    .param p0, "phoneId"    # I

    .line 317
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

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

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 537
    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method public static blacklist needSecSimOnOffEx()Z
    .registers 4

    .line 440
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_25

    .line 441
    const-string/jumbo v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM-M205F"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 442
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-M305F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 443
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needToCheckVolteSubscriber(I)Z
    .registers 5
    .param p0, "phoneId"    # I

    .line 413
    const-string v0, "23001"

    const-string v1, "24001"

    const-string v2, "26201"

    const-string v3, "50501"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 414
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist needToRunLteRoaming(I)Z
    .registers 10
    .param p0, "phoneId"    # I

    .line 421
    const-string v0, "SKT"

    const-string v1, "KTT"

    const-string v2, "LGT"

    const-string v3, "KOO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_14

    .line 422
    return v5

    .line 425
    :cond_14
    const-string/jumbo v4, "ril.simtype"

    const-string v6, ""

    invoke-static {p0, v4, v6}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "simType":Ljava/lang/String;
    const-string v6, "2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_30

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 428
    :cond_30
    const-string v1, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 429
    :cond_42
    const-string v2, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 430
    :cond_54
    return v8

    .line 431
    :cond_55
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 432
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 433
    :cond_71
    return v8

    .line 436
    :cond_72
    return v5
.end method

.method public static blacklist showVoiceAsDataNetworkType(I)Z
    .registers 4
    .param p0, "phoneId"    # I

    .line 458
    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 459
    const/4 v0, 0x1

    return v0

    .line 461
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist supportDualLte()Z
    .registers 3

    .line 472
    sget v0, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    .line 473
    return v1

    .line 475
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DUAL_IMS"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "configDualIms":Ljava/lang/String;
    const-string v2, "DSDS_SI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "DSDS_DI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_23

    .line 479
    :cond_22
    return v1

    .line 477
    :cond_23
    :goto_23
    const/4 v1, 0x1

    return v1
.end method
