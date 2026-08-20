.class public Lcom/android/internal/telephony/SmsConfig;
.super Landroid/os/Handler;
.source "SmsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;
    }
.end annotation


# static fields
.field private static blacklist IMS_MNO_URI:Landroid/net/Uri; = null

.field public static final blacklist SMS_3GPP2_LGT_NETWORK:Ljava/lang/String; = "sms_3gpp2_lgt_network"

.field public static final blacklist SMS_ALLOW_EMAIL_SMS_ADDRESS:Ljava/lang/String; = "sms_allow_email_sms_address"

.field public static final blacklist SMS_CDMA_COPY_TO_RUIM:Ljava/lang/String; = "sms_cdma_copy_to_ruim"

.field public static final blacklist SMS_CDMA_SENT_FAIL_DISPLAY:Ljava/lang/String; = "sms_cdma_sent_fail_display"

.field public static final blacklist SMS_CHECK_DUPLICATE_PORT_OMADM_WAPPUSH:Ljava/lang/String; = "sms_check_duplicate_port_omadm_wappush"

.field public static final blacklist SMS_CHECK_ECM_MODE:Ljava/lang/String; = "sms_check_ecm_mode"

.field public static final blacklist SMS_DISABLE_SMS_VOICEMAIL:Ljava/lang/String; = "sms_disable_sms_voicemail"

.field public static final blacklist SMS_DISPLAY_POLICY_PARTIAL_LONG_SMS:Ljava/lang/String; = "sms_display_policy_partial_long_sms"

.field public static final blacklist SMS_ECM_INCOMING_SMS:Ljava/lang/String; = "sms_ecm_incoming_sms"

.field public static final blacklist SMS_ERROR_CLASS_RETRY:Ljava/lang/String; = "sms_error_class_retry"

.field public static final blacklist SMS_GLOBAL_MODE_SMS_ADDRESS_RULE:Ljava/lang/String; = "sms_global_mode_sms_address_rule"

.field public static final blacklist SMS_MAX_RETRIES_ONE:Ljava/lang/String; = "sms_max_retries_one"

.field public static final blacklist SMS_MAX_RETRIES_ZERO:Ljava/lang/String; = "sms_max_retries_zero"

.field public static final blacklist SMS_MMS_UAP_BUILD_ID:Ljava/lang/String; = "sms_mms_uap_build_id"

.field public static final blacklist SMS_NETWORKLOCK_ALLOW_SMS:Ljava/lang/String; = "sms_networklock_allow_sms"

.field public static final blacklist SMS_NETWORK_SEARCH_FOR_E911:Ljava/lang/String; = "sms_network_search_for_e911"

.field public static final blacklist SMS_NOT_COUNT_VOICEMAIL:Ljava/lang/String; = "sms_not_count_voicemail"

.field public static final blacklist SMS_NOT_RECEIVE_CMAS_WITHOUT_SIM:Ljava/lang/String; = "sms_not_receive_cmas_without_sim"

.field public static final blacklist SMS_NOT_USED_VALIDITY_PERIOD_FORMAT:Ljava/lang/String; = "sms_not_used_validity_period_format"

.field public static final blacklist SMS_NSRI_SECURITY_SOLUTION:Ljava/lang/String; = "sms_nsri_security_solution"

.field public static final blacklist SMS_QMI_CDMA_GSM:Ljava/lang/String; = "sms_qmi_cdma_gsm"

.field public static final blacklist SMS_READ_CONFIRM:Ljava/lang/String; = "sms_read_confirm"

.field public static final blacklist SMS_RECEIVE_SMS_WITHOUT_SMSCAPABLE:Ljava/lang/String; = "sms_receive_sms_without_smscapable"

.field public static final blacklist SMS_RP_SMMA_NOT_SUPPORTED:Ljava/lang/String; = "sms_rp_smma_not_supported"

.field public static final blacklist SMS_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "sms_safe_message_indication"

.field public static final blacklist SMS_SEGMENTED_SMS:Ljava/lang/String; = "sms_segmented_sms"

.field public static final blacklist SMS_SHOW_HIDDEN_MENU_SMS_PREF_MODE:Ljava/lang/String; = "sms_show_hidden_menu_sms_pref_mode"

.field public static final blacklist SMS_SMSP:Ljava/lang/String; = "sms_smsp"

.field public static final blacklist SMS_SPECIAL_ADDRESS_HANDLING_FOR:Ljava/lang/String; = "sms_special_address_handling_for"

.field public static final blacklist SMS_SUPPORT_GSM_8BIT_SMS:Ljava/lang/String; = "sms_support_gsm_8bit_sms"

.field public static final blacklist SMS_SUPPORT_KSC5601:Ljava/lang/String; = "sms_support_ksc5601"

.field public static final blacklist SMS_SUPPORT_REPLY_ADDRESS:Ljava/lang/String; = "sms_support_reply_address"

.field public static final blacklist SMS_WAP_PUSH_FORMAT_SMS:Ljava/lang/String; = "sms_wap_push_format_sms"

.field public static final blacklist SMS_WRITE_UICC_SUPPORTED:Ljava/lang/String; = "sms_write_uicc_supported"

.field private static blacklist sInstance:Lcom/android/internal/telephony/SmsConfig;


# instance fields
.field private blacklist mCheckDuplicatePortOmadmWappush:Z

.field private blacklist mCheckEcmMode:Z

.field private blacklist mDisableSmsVoicemail:Z

.field private blacklist mDisplayPolicyPartialLongSms:Z

.field private blacklist mEcmIncomingSms:Z

.field private blacklist mGlobalModeSmsAddressRule:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMnoName:Ljava/lang/String;

.field private final blacklist mImsMnoNameLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mImsMvnoName:Ljava/lang/String;

.field private final blacklist mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mMmsUapBuildId:Z

.field private blacklist mNetworkLockAllowSms:Z

.field private blacklist mNetworkSearchForSms:Z

.field private blacklist mNotCountVoicemail:Z

.field private blacklist mNotReceiveCmasWithoutSim:Z

.field private blacklist mNsriSecuritySolution:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mQmiCdmaGsm:Z

.field private blacklist mReceiveSmsWithoutSmscapable:Z

.field private blacklist mRpSmmaNotSupported:Z

.field private blacklist mSegmentedSms:Z

.field private blacklist mSms3gpp2LgtNetwork:Z

.field private blacklist mSmsAddressSeparator:Z

.field private blacklist mSmsAllowEmailSmsAddress:Z

.field private blacklist mSmsCdmaCopyToRuim:Z

.field private blacklist mSmsCdmaSentFailDisplay:Z

.field private blacklist mSmsErrorClassRetry:Z

.field private blacklist mSmsMaxRetriesOne:Z

.field private blacklist mSmsMaxRetriesZero:Z

.field private blacklist mSmsNotUsedValidityPeriodFormat:Z

.field private blacklist mSmsReadConfirm:Z

.field private blacklist mSmsSafeMessageIndication:Z

.field private blacklist mSmsShowHiddenMenuSmsPrefMode:Z

.field private blacklist mSmsSmsp:Z

.field private blacklist mSmsSupportKsc5601:Z

.field private blacklist mSmsSupportReplyAddress:Z

.field private blacklist mSmsWriteUiccSupported:Z

.field private blacklist mSpecialAddressHandlingFor:Z

.field private blacklist mSupportGsm8bitSms:Z

.field private blacklist mWapPushFormatSms:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.ims.settings/mno"

    .line 110
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsConfig;->IMS_MNO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V
    .registers 6

    .line 113
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAddressSeparator:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    .line 101
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    .line 102
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoNameLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "default"

    .line 108
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMvnoName:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/SmsConfig;->mHandlerThread:Landroid/os/HandlerThread;

    .line 118
    :try_start_68
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->getImsMnoUri()Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;-><init>(Lcom/android/internal/telephony/SmsConfig;Landroid/os/Handler;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7c} :catch_7d

    goto :goto_84

    .line 121
    :catch_7d
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoNameLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "ContentObserver register fail"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :goto_84
    return-void
.end method

.method private blacklist getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p1, :cond_27

    .line 503
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_27

    .line 507
    :cond_9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_10

    return p3

    .line 512
    :cond_10
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 513
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0

    :cond_27
    :goto_27
    return p3
.end method

.method private blacklist getImsMnoUri()Landroid/net/Uri;
    .registers 4

    const-string v0, "content://com.sec.ims.settings/mno"

    .line 243
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsConfig"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeSmsConfig(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsConfig;
    .registers 4

    const-string v0, "SmsConfig"

    const-string v1, "makeSmsConfig"

    .line 126
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/SmsConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v1, Lcom/android/internal/telephony/SmsConfig;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SmsConfig;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V

    sput-object v1, Lcom/android/internal/telephony/SmsConfig;->sInstance:Lcom/android/internal/telephony/SmsConfig;

    return-object v1
.end method

.method private blacklist sendMnoNameToRil()V
    .registers 9

    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "SmsConfig"

    .line 286
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 288
    iget-object v4, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 289
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/16 v7, 0x25

    .line 292
    :try_start_18
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 293
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 294
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 295
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_3e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_3c

    .line 301
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 302
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_35

    goto :goto_5d

    :catch_35
    move-exception p0

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_50

    :catchall_3c
    move-exception p0

    goto :goto_5e

    :catch_3e
    :try_start_3e
    const-string p0, "IOException during set MNO name"

    .line 298
    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3c

    .line 301
    :try_start_43
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 302
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_4a

    goto :goto_5d

    :catch_4a
    move-exception p0

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-void

    .line 301
    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 302
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_64} :catch_65

    goto :goto_78

    :catch_65
    move-exception v2

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_78
    throw p0
.end method

.method private blacklist setNsriFeatureOn()V
    .registers 7

    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "SmsConfig"

    .line 310
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x25

    .line 315
    :try_start_10
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 316
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 317
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 318
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_25} :catch_35
    .catchall {:try_start_10 .. :try_end_25} :catchall_33

    .line 323
    :try_start_25
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 324
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_2c

    goto :goto_54

    :catch_2c
    move-exception p0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_47

    :catchall_33
    move-exception p0

    goto :goto_55

    :catch_35
    :try_start_35
    const-string p0, "IOException during setNsriFeatureOn"

    .line 320
    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_33

    .line 323
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 324
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_54

    :catch_41
    move-exception p0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void

    .line 323
    :goto_55
    :try_start_55
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 324
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_5c

    goto :goto_6f

    :catch_5c
    move-exception v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_6f
    throw p0
.end method

.method private blacklist updateSmsSetting()V
    .registers 8

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsSetting: simslot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    const-string v0, "content://com.sec.ims.settings/sms_setting"

    .line 447
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    .line 450
    :try_start_44
    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_16f

    .line 451
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_16f

    const-string v1, "sms_display_policy_partial_long_sms"

    const/4 v2, 0x0

    .line 453
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    const-string v1, "sms_special_address_handling_for"

    .line 454
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    const-string v1, "sms_wap_push_format_sms"

    .line 455
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    const-string v1, "sms_qmi_cdma_gsm"

    .line 456
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    const-string v1, "sms_smsp"

    .line 457
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    const-string v1, "sms_safe_message_indication"

    .line 458
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    const-string v1, "sms_3gpp2_lgt_network"

    .line 459
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    const-string v1, "sms_global_mode_sms_address_rule"

    .line 460
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    const-string v1, "sms_not_count_voicemail"

    .line 461
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    const-string v1, "sms_segmented_sms"

    .line 462
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    const-string v1, "sms_cdma_copy_to_ruim"

    .line 463
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    const-string v1, "sms_cdma_sent_fail_display"

    .line 464
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    const-string v1, "sms_error_class_retry"

    .line 465
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    const-string v1, "sms_max_retries_zero"

    .line 466
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    const-string v1, "sms_not_used_validity_period_format"

    .line 467
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    const-string v1, "sms_read_confirm"

    .line 468
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    const-string v1, "sms_show_hidden_menu_sms_pref_mode"

    .line 469
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    const-string v1, "sms_allow_email_sms_address"

    .line 470
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    const-string v1, "sms_support_ksc5601"

    .line 471
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    const-string v1, "sms_support_reply_address"

    .line 472
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    const-string v1, "sms_disable_sms_voicemail"

    .line 473
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    const-string v1, "sms_mms_uap_build_id"

    .line 474
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    const-string v1, "sms_max_retries_one"

    .line 475
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    const-string v1, "sms_ecm_incoming_sms"

    .line 476
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    const-string v1, "sms_support_gsm_8bit_sms"

    .line 477
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    const-string v1, "sms_check_ecm_mode"

    .line 478
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    const-string v1, "sms_write_uicc_supported"

    .line 479
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    const-string v1, "sms_receive_sms_without_smscapable"

    .line 480
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    const-string v1, "sms_rp_smma_not_supported"

    .line 481
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    const-string v1, "sms_check_duplicate_port_omadm_wappush"

    .line 482
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    const-string v1, "sms_not_receive_cmas_without_sim"

    .line 483
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    const-string v1, "sms_nsri_security_solution"

    .line 484
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    const-string v1, "sms_networklock_allow_sms"

    .line 485
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    const-string v1, "sms_network_search_for_e911"

    .line 486
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z
    :try_end_16f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_16f} :catch_17b
    .catchall {:try_start_44 .. :try_end_16f} :catchall_179

    :cond_16f
    if-eqz v0, :cond_174

    .line 493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_174
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    if-eqz v0, :cond_18b

    goto :goto_188

    :catchall_179
    move-exception v1

    goto :goto_18f

    :catch_17b
    move-exception v1

    .line 489
    :try_start_17c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_179

    if-eqz v0, :cond_184

    .line 493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_184
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    if-eqz v0, :cond_18b

    .line 496
    :goto_188
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->setNsriFeatureOn()V

    .line 498
    :cond_18b
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->printSetting()V

    return-void

    :goto_18f
    if-eqz v0, :cond_194

    .line 493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_194
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    if-eqz v0, :cond_19b

    .line 496
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->setNsriFeatureOn()V

    .line 498
    :cond_19b
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->printSetting()V

    .line 499
    throw v1
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    const-string v0, "SmsConfig"

    const-string v1, "dispose"

    .line 139
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_11

    .line 142
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_11
    return-void
.end method

.method public blacklist getMnoName()Ljava/lang/String;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmsSetting(Ljava/lang/String;)Z
    .registers 5

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_262

    goto/16 :goto_1d1

    :sswitch_e
    const-string v0, "sms_check_ecm_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_1d1

    :cond_18
    const/16 v2, 0x21

    goto/16 :goto_1d1

    :sswitch_1c
    const-string v0, "sms_max_retries_zero"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_1d1

    :cond_26
    const/16 v2, 0x20

    goto/16 :goto_1d1

    :sswitch_2a
    const-string v0, "sms_wap_push_format_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_1d1

    :cond_34
    const/16 v2, 0x1f

    goto/16 :goto_1d1

    :sswitch_38
    const-string v0, "sms_allow_email_sms_address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_1d1

    :cond_42
    const/16 v2, 0x1e

    goto/16 :goto_1d1

    :sswitch_46
    const-string v0, "sms_check_duplicate_port_omadm_wappush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_1d1

    :cond_50
    const/16 v2, 0x1d

    goto/16 :goto_1d1

    :sswitch_54
    const-string v0, "sms_safe_message_indication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_1d1

    :cond_5e
    const/16 v2, 0x1c

    goto/16 :goto_1d1

    :sswitch_62
    const-string v0, "sms_segmented_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_1d1

    :cond_6c
    const/16 v2, 0x1b

    goto/16 :goto_1d1

    :sswitch_70
    const-string v0, "sms_not_receive_cmas_without_sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_1d1

    :cond_7a
    const/16 v2, 0x1a

    goto/16 :goto_1d1

    :sswitch_7e
    const-string v0, "sms_support_ksc5601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_1d1

    :cond_88
    const/16 v2, 0x19

    goto/16 :goto_1d1

    :sswitch_8c
    const-string v0, "sms_3gpp2_lgt_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_1d1

    :cond_96
    const/16 v2, 0x18

    goto/16 :goto_1d1

    :sswitch_9a
    const-string v0, "sms_show_hidden_menu_sms_pref_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_1d1

    :cond_a4
    const/16 v2, 0x17

    goto/16 :goto_1d1

    :sswitch_a8
    const-string v0, "sms_support_reply_address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_1d1

    :cond_b2
    const/16 v2, 0x16

    goto/16 :goto_1d1

    :sswitch_b6
    const-string v0, "sms_cdma_sent_fail_display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_1d1

    :cond_c0
    const/16 v2, 0x15

    goto/16 :goto_1d1

    :sswitch_c4
    const-string v0, "sms_qmi_cdma_gsm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_1d1

    :cond_ce
    const/16 v2, 0x14

    goto/16 :goto_1d1

    :sswitch_d2
    const-string v0, "sms_global_mode_sms_address_rule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_1d1

    :cond_dc
    const/16 v2, 0x13

    goto/16 :goto_1d1

    :sswitch_e0
    const-string v0, "sms_network_search_for_e911"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_1d1

    :cond_ea
    const/16 v2, 0x12

    goto/16 :goto_1d1

    :sswitch_ee
    const-string v0, "sms_not_used_validity_period_format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto/16 :goto_1d1

    :cond_f8
    const/16 v2, 0x11

    goto/16 :goto_1d1

    :sswitch_fc
    const-string v0, "sms_max_retries_one"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto/16 :goto_1d1

    :cond_106
    const/16 v2, 0x10

    goto/16 :goto_1d1

    :sswitch_10a
    const-string v0, "sms_cdma_copy_to_ruim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    goto/16 :goto_1d1

    :cond_114
    const/16 v2, 0xf

    goto/16 :goto_1d1

    :sswitch_118
    const-string v0, "sms_read_confirm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    goto/16 :goto_1d1

    :cond_122
    const/16 v2, 0xe

    goto/16 :goto_1d1

    :sswitch_126
    const-string v0, "sms_smsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    goto/16 :goto_1d1

    :cond_130
    const/16 v2, 0xd

    goto/16 :goto_1d1

    :sswitch_134
    const-string v0, "sms_not_count_voicemail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    goto/16 :goto_1d1

    :cond_13e
    const/16 v2, 0xc

    goto/16 :goto_1d1

    :sswitch_142
    const-string v0, "sms_write_uicc_supported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14c

    goto/16 :goto_1d1

    :cond_14c
    const/16 v2, 0xb

    goto/16 :goto_1d1

    :sswitch_150
    const-string v0, "sms_networklock_allow_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15a

    goto/16 :goto_1d1

    :cond_15a
    const/16 v2, 0xa

    goto/16 :goto_1d1

    :sswitch_15e
    const-string v0, "sms_ecm_incoming_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    goto/16 :goto_1d1

    :cond_168
    const/16 v2, 0x9

    goto/16 :goto_1d1

    :sswitch_16c
    const-string v0, "sms_error_class_retry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_176

    goto/16 :goto_1d1

    :cond_176
    const/16 v2, 0x8

    goto/16 :goto_1d1

    :sswitch_17a
    const-string v0, "sms_disable_sms_voicemail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    goto :goto_1d1

    :cond_183
    const/4 v2, 0x7

    goto :goto_1d1

    :sswitch_185
    const-string v0, "sms_rp_smma_not_supported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e

    goto :goto_1d1

    :cond_18e
    const/4 v2, 0x6

    goto :goto_1d1

    :sswitch_190
    const-string v0, "sms_receive_sms_without_smscapable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    goto :goto_1d1

    :cond_199
    const/4 v2, 0x5

    goto :goto_1d1

    :sswitch_19b
    const-string v0, "sms_nsri_security_solution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto :goto_1d1

    :cond_1a4
    const/4 v2, 0x4

    goto :goto_1d1

    :sswitch_1a6
    const-string v0, "sms_mms_uap_build_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    goto :goto_1d1

    :cond_1af
    const/4 v2, 0x3

    goto :goto_1d1

    :sswitch_1b1
    const-string v0, "sms_support_gsm_8bit_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba

    goto :goto_1d1

    :cond_1ba
    const/4 v2, 0x2

    goto :goto_1d1

    :sswitch_1bc
    const-string v0, "sms_display_policy_partial_long_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c5

    goto :goto_1d1

    :cond_1c5
    const/4 v2, 0x1

    goto :goto_1d1

    :sswitch_1c7
    const-string v0, "sms_special_address_handling_for"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d0

    goto :goto_1d1

    :cond_1d0
    move v2, v1

    :goto_1d1
    packed-switch v2, :pswitch_data_2ec

    const-string v0, "SmsConfig"

    const-string v2, "invalid setting name"

    .line 437
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24a

    .line 410
    :pswitch_1dd
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    goto/16 :goto_24a

    .line 374
    :pswitch_1e1
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    goto/16 :goto_24a

    .line 341
    :pswitch_1e5
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    goto/16 :goto_24a

    .line 386
    :pswitch_1e9
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    goto/16 :goto_24a

    .line 422
    :pswitch_1ed
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    goto/16 :goto_24a

    .line 350
    :pswitch_1f1
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    goto/16 :goto_24a

    .line 362
    :pswitch_1f5
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    goto/16 :goto_24a

    .line 425
    :pswitch_1f9
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    goto/16 :goto_24a

    .line 389
    :pswitch_1fd
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    goto :goto_24a

    .line 353
    :pswitch_200
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    goto :goto_24a

    .line 383
    :pswitch_203
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    goto :goto_24a

    .line 392
    :pswitch_206
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    goto :goto_24a

    .line 368
    :pswitch_209
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    goto :goto_24a

    .line 344
    :pswitch_20c
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    goto :goto_24a

    .line 356
    :pswitch_20f
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    goto :goto_24a

    .line 434
    :pswitch_212
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    goto :goto_24a

    .line 377
    :pswitch_215
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    goto :goto_24a

    .line 401
    :pswitch_218
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    goto :goto_24a

    .line 365
    :pswitch_21b
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    goto :goto_24a

    .line 380
    :pswitch_21e
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    goto :goto_24a

    .line 347
    :pswitch_221
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    goto :goto_24a

    .line 359
    :pswitch_224
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    goto :goto_24a

    .line 413
    :pswitch_227
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    goto :goto_24a

    .line 431
    :pswitch_22a
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    goto :goto_24a

    .line 404
    :pswitch_22d
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    goto :goto_24a

    .line 371
    :pswitch_230
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    goto :goto_24a

    .line 395
    :pswitch_233
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    goto :goto_24a

    .line 419
    :pswitch_236
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    goto :goto_24a

    .line 416
    :pswitch_239
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    goto :goto_24a

    .line 428
    :pswitch_23c
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    goto :goto_24a

    .line 398
    :pswitch_23f
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    goto :goto_24a

    .line 407
    :pswitch_242
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    goto :goto_24a

    .line 335
    :pswitch_245
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    goto :goto_24a

    .line 338
    :pswitch_248
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    .line 440
    :goto_24a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    return v1

    :sswitch_data_262
    .sparse-switch
        -0x6ea2323a -> :sswitch_1c7
        -0x6b6995e2 -> :sswitch_1bc
        -0x5e8e30fd -> :sswitch_1b1
        -0x5e4d80e7 -> :sswitch_1a6
        -0x5c7eb185 -> :sswitch_19b
        -0x59b86a4e -> :sswitch_190
        -0x4e262194 -> :sswitch_185
        -0x3d9020fa -> :sswitch_17a
        -0x301503fc -> :sswitch_16c
        -0x24a9d96a -> :sswitch_15e
        -0x11b53f69 -> :sswitch_150
        -0x11257057 -> :sswitch_142
        -0x9065e99 -> :sswitch_134
        -0x623a6a3 -> :sswitch_126
        -0x4a629c3 -> :sswitch_118
        0xc1f1c05 -> :sswitch_10a
        0xc4702ac -> :sswitch_fc
        0x1e75d658 -> :sswitch_ee
        0x20ca4b0a -> :sswitch_e0
        0x2590a633 -> :sswitch_d2
        0x2809facf -> :sswitch_c4
        0x2841c384 -> :sswitch_b6
        0x329e4cc9 -> :sswitch_a8
        0x35922d92 -> :sswitch_9a
        0x46d87141 -> :sswitch_8c
        0x4f843b87 -> :sswitch_7e
        0x51cf3a2b -> :sswitch_70
        0x5b9f7e46 -> :sswitch_62
        0x5f8989a0 -> :sswitch_54
        0x60cef4c0 -> :sswitch_46
        0x69cdea8f -> :sswitch_38
        0x717cdc17 -> :sswitch_2a
        0x7c9e3322 -> :sswitch_1c
        0x7ebb7550 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2ec
    .packed-switch 0x0
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1f9
        :pswitch_1f5
        :pswitch_1f1
        :pswitch_1ed
        :pswitch_1e9
        :pswitch_1e5
        :pswitch_1e1
        :pswitch_1dd
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "SmsConfig"

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto :goto_1c

    :cond_b
    const-string p1, "EVENT_SMS_SETTING_CHANGED"

    .line 155
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->updateSmsSetting()V

    goto :goto_1c

    :cond_14
    const-string p1, "EVENT_IMS_MNONAME_CHANGED"

    .line 151
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->updateImsMnoName()V

    :goto_1c
    return-void
.end method

.method public blacklist isKor()Z
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT_KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LGU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public varargs blacklist isMnoName([Ljava/lang/String;)Z
    .registers 7

    .line 263
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_18

    aget-object v3, p1, v2

    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_18
    return v1
.end method

.method public blacklist printSetting()V
    .registers 3

    const-string v0, "------------------SmsSettings--------------------"

    .line 517
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_display_policy_partial_long_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_special_address_handling_for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_wap_push_format_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_qmi_cdma_gsm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_smsp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_safe_message_indication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_3gpp2_lgt_network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_global_mode_sms_address_rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_not_count_voicemail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_segmented_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_cdma_copy_to_ruim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_cdma_sent_fail_display : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_error_class_retry : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_max_retries_zero : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_not_used_validity_period_format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_read_confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_show_hidden_menu_sms_pref_mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_allow_email_sms_address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_support_ksc5601 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_support_reply_address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_disable_sms_voicemail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_mms_uap_build_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_max_retries_one  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_ecm_incoming_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_support_gsm_8bit_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_check_ecm_mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_write_uicc_supported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_receive_sms_without_smscapable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_rp_smma_not_supported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_check_duplicate_port_omadm_wappush : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_not_receive_cmas_without_sim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_nsri_security_solution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_networklock_allow_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_network_search_for_e911 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateImsMnoName()V
    .registers 8

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsMnoName - old ImsMnoName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->getImsMnoUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_bf

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b8

    move-object v2, v1

    move-object v3, v2

    :cond_38
    const-string v4, "hassim"

    .line 176
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b0

    .line 178
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMnoNameFromDB() hassim :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    const-string v5, "TRUE"

    .line 180
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "mnoname"

    .line 181
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_b0

    if-eqz v4, :cond_b0

    .line 183
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mvnoname"

    .line 184
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b0

    .line 187
    :try_start_74
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMnoNameFromDB() mvno :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    if-eqz v3, :cond_b0

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_a8} :catch_a9

    goto :goto_b0

    :catch_a9
    const-string v4, "SmsConfig"

    const-string v5, "getMnoNameFromDB() not mvno operator"

    .line 193
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_b0
    :goto_b0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_38

    move-object v1, v2

    goto :goto_b9

    :cond_b8
    move-object v3, v1

    .line 200
    :goto_b9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    move-object v1, v3

    goto :goto_c0

    :cond_bf
    move-object v0, v1

    .line 202
    :goto_c0
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMvnoName:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->updateMnoNameForKorSim()V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsMnoName - new ImsMnoName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->sendMnoNameToRil()V

    return-void
.end method

.method public blacklist updateMnoNameForKorSim()V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "00000"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le v1, v3, :cond_1b

    .line 213
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1b
    const-string v0, "000"

    :goto_1d
    const-string v1, "450"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_85

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_86

    :goto_44
    move v2, v0

    goto :goto_70

    :sswitch_46
    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_44

    :cond_4f
    move v2, v3

    goto :goto_70

    :sswitch_51
    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto :goto_44

    :cond_5a
    const/4 v2, 0x2

    goto :goto_70

    :sswitch_5c
    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_44

    :cond_65
    const/4 v2, 0x1

    goto :goto_70

    :sswitch_67
    const-string v3, "KOO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_44

    :cond_70
    :goto_70
    const-string v0, "SKT_KR"

    packed-switch v2, :pswitch_data_98

    goto :goto_85

    .line 223
    :pswitch_76
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    goto :goto_85

    :pswitch_79
    const-string v0, "LGU+_KR"

    .line 229
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    goto :goto_85

    :pswitch_7e
    const-string v0, "KT_KR"

    .line 226
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    goto :goto_85

    .line 232
    :pswitch_83
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    :cond_85
    :goto_85
    return-void

    :sswitch_data_86
    .sparse-switch
        0x1236b -> :sswitch_67
        0x1240b -> :sswitch_5c
        0x12639 -> :sswitch_51
        0x140fc -> :sswitch_46
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method
