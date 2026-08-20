.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;,
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final greylist-max-o ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final greylist-max-o ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final greylist-max-o ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final greylist-max-o ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final greylist-max-o ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final greylist-max-o ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final greylist-max-o ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final greylist-max-o ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final greylist-max-o ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final greylist-max-o ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final blacklist ELT_ID_KT_READ_CONFIRM:I = 0x44

.field public static final greylist-max-o ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final greylist-max-o ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final greylist-max-o ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final greylist-max-o ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final greylist-max-o ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final blacklist ELT_ID_OPERATOR_CONTROL_ELEMENT:I = 0xc0

.field public static final greylist-max-o ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final greylist-max-o ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final greylist-max-o ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final greylist-max-o ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final greylist-max-o ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final greylist-max-o ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final greylist-max-o ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final greylist-max-o ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final greylist-max-o ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final greylist-max-o ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final greylist-max-o ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final greylist-max-o ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final greylist-max-o ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final greylist-max-o ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final greylist-max-o ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final greylist-max-o ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final blacklist PORT_CCT_UNLOCK:I = 0x2454

.field public static final blacklist PORT_KT_APP_MANAGER_MAX:I = 0xc216

.field public static final blacklist PORT_KT_APP_MANAGER_MIN:I = 0xc210

.field public static final blacklist PORT_KT_MOBILECARE_DATA_MESSAGE:I = 0xc226

.field public static final blacklist PORT_KT_MOBILECARE_DATA_ROAMING_MESSAGE:I = 0xc227

.field public static final blacklist PORT_KT_MOBILECARE_NETWORK_MESSAGE:I = 0xc224

.field public static final blacklist PORT_KT_MOBILECARE_REBOOT_MESSAGE:I = 0xc223

.field public static final blacklist PORT_KT_MOBILECARE_ROAMING_MESSAGE:I = 0xc225

.field public static final blacklist PORT_KT_MOBILECARE_ROAMING_MNO_SELECTION_MESSAGE:I = 0xc228

.field public static final blacklist PORT_KT_MOBILECARE_USB_TETHERING_MESSAGE:I = 0xc229

.field public static final blacklist PORT_KT_TWO_PHONE_CANCEL:I = 0xc402

.field public static final blacklist PORT_KT_TWO_PHONE_CHANGE:I = 0xc403

.field public static final blacklist PORT_KT_TWO_PHONE_SUBSCRIBE:I = 0xc401

.field public static final blacklist PORT_KT_WPS_MESSAGE:I = 0xc221

.field public static final blacklist PORT_LGT_SUPL_SMS:I = 0x1c6b

.field public static final blacklist PORT_RCS_OTP:I = 0x9199

.field public static final blacklist PORT_SKT_COMMON_PUSH_SMS:I = 0x425c

.field public static final blacklist PORT_SKT_FINDING_FRIENDS:I = 0x1c6b

.field public static final blacklist PORT_SKT_FINDING_LOST_PHONE_CANCEL:I = 0x4200

.field public static final blacklist PORT_SKT_FINDING_LOST_PHONE_SUBSCRIBE:I = 0x4201

.field public static final blacklist PORT_SKT_FOTA_SMS:I = 0x4244

.field public static final greylist-max-o PORT_WAP_PUSH:I = 0xb84

.field public static final greylist-max-o PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public greylist concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public blacklist ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

.field public greylist languageShiftTable:I

.field public greylist languageTable:I

.field public greylist-max-o miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public greylist portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public blacklist safeMessageIndication:Z

.field public greylist-max-o specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist twoPhoneIndication:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    .line 436
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    .line 223
    return-void
.end method

.method public static greylist fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .registers 2
    .param p0, "data"    # [B

    .line 234
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsHeader;->semFromByteArray(I[B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public static greylist semFromByteArray(I[B)Lcom/android/internal/telephony/SmsHeader;
    .registers 15
    .param p0, "subId"    # I
    .param p1, "data"    # [B

    .line 447
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "mnoName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semFromByteArray: Mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsHeader"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 451
    .local v2, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 452
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :goto_30
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_224

    .line 461
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 462
    .local v5, "id":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 468
    .local v6, "length":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_226

    goto/16 :goto_20d

    .line 541
    :sswitch_45
    const-string v9, "SKT_KR"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "KT_KR"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "LGU+_KR"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_20d

    .line 542
    :cond_5d
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 543
    .local v7, "operatorControlElementValue":I
    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v9

    const-string/jumbo v10, "sms_safe_message_indication"

    invoke-virtual {v9, v10}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 544
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    .line 545
    .local v9, "phoneId":I
    const-string/jumbo v10, "ril.simtype"

    const-string v11, "0"

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 546
    .local v10, "simType":Ljava/lang/String;
    const-string v11, "4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8b

    const-string v11, "3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_90

    :cond_8b
    if-ne v7, v8, :cond_90

    .line 548
    iput-boolean v8, v4, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    goto :goto_9f

    .line 549
    :cond_90
    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9f

    and-int/lit8 v11, v7, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9f

    .line 550
    iput-boolean v8, v4, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    .line 552
    :cond_9f
    :goto_9f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received smsHeader.safeMessageIndication: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v4, Lcom/android/internal/telephony/SmsHeader;->safeMessageIndication:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " simType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SafeMessageIndication"

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .end local v9    # "phoneId":I
    .end local v10    # "simType":Ljava/lang/String;
    :cond_c3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_222

    .line 556
    and-int/lit8 v9, v7, 0x1

    if-ne v9, v8, :cond_d5

    .line 557
    iput-boolean v8, v4, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    .line 559
    :cond_d5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received smsHeader.twoPhoneIndication: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Lcom/android/internal/telephony/SmsHeader;->twoPhoneIndication:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TwoPhoneIndication"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_222

    .line 507
    .end local v7    # "operatorControlElementValue":I
    :sswitch_f1
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;-><init>()V

    .line 508
    .local v7, "ktReadConfirm":Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    iput v5, v7, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    .line 509
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    .line 510
    iput-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    .line 511
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "readConfirmID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    goto/16 :goto_222

    .line 519
    .end local v7    # "ktReadConfirm":Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    :sswitch_128
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 520
    goto/16 :goto_222

    .line 516
    :sswitch_130
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 517
    goto/16 :goto_222

    .line 481
    :sswitch_138
    new-instance v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 482
    .local v8, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 483
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 484
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 485
    iput-boolean v7, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 486
    iget v7, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v7, :cond_222

    iget v7, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v7, :cond_222

    iget v7, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v7, v9, :cond_222

    .line 488
    iput-object v8, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_222

    .line 499
    .end local v8    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_16a
    new-instance v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 500
    .local v8, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 501
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 502
    iput-boolean v7, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 503
    iput-object v8, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 504
    goto/16 :goto_222

    .line 492
    .end local v8    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_18f
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 493
    .local v7, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 494
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 495
    iput-boolean v8, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 496
    iput-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 497
    goto/16 :goto_222

    .line 524
    .end local v7    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_1a6
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    const-string v9, "KOR"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1cc

    .line 525
    new-instance v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 526
    .local v8, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v5, v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 527
    new-array v9, v6, [B

    iput-object v9, v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 528
    iget-object v9, v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v9, v7, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 529
    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v8    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    goto :goto_222

    .line 532
    :cond_1cc
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    .line 533
    .local v7, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    .line 534
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    .line 535
    iget-object v8, v4, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v7    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    goto :goto_222

    .line 470
    :sswitch_1e3
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 471
    .local v7, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 472
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 473
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    iput v9, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 474
    iput-boolean v8, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 475
    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_222

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_222

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v7, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_222

    .line 477
    iput-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_222

    .line 565
    .end local v7    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_20d
    :goto_20d
    new-instance v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 566
    .restart local v8    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v5, v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 567
    new-array v9, v6, [B

    iput-object v9, v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 568
    iget-object v9, v8, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v9, v7, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 569
    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v5    # "id":I
    .end local v6    # "length":I
    .end local v8    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_222
    :goto_222
    goto/16 :goto_30

    .line 572
    :cond_224
    return-object v4

    nop

    :sswitch_data_226
    .sparse-switch
        0x0 -> :sswitch_1e3
        0x1 -> :sswitch_1a6
        0x4 -> :sswitch_18f
        0x5 -> :sswitch_16a
        0x8 -> :sswitch_138
        0x24 -> :sswitch_130
        0x25 -> :sswitch_128
        0x44 -> :sswitch_f1
        0xc0 -> :sswitch_45
    .end sparse-switch
.end method

.method public static greylist toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .registers 10
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v0, :cond_26

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 260
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 261
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_63

    .line 262
    iget-boolean v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v5, :cond_46

    .line 263
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_59

    .line 267
    :cond_46
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 268
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 269
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 270
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    :goto_59
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 273
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 275
    :cond_63
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 276
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    const/4 v6, 0x2

    if-eqz v5, :cond_9e

    .line 277
    iget-boolean v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v7, :cond_7d

    .line 278
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 280
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 281
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9e

    .line 283
    :cond_7d
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 284
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 285
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 286
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 287
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 288
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 291
    :cond_9e
    :goto_9e
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    const/4 v4, 0x1

    if-eqz v3, :cond_b0

    .line 292
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 293
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 294
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    :cond_b0
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v3, :cond_c1

    .line 297
    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 301
    :cond_c1
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 302
    .local v7, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 303
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 306
    .end local v7    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    goto :goto_c7

    .line 307
    :cond_e8
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ee
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 308
    .local v6, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v7, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 310
    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v8, v8

    invoke-virtual {v0, v7, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 311
    .end local v6    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    goto :goto_ee

    .line 314
    :cond_10e
    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    .line 315
    .local v2, "ktReadConfirm":Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    if-eqz v2, :cond_11f

    .line 316
    const/16 v3, 0x44

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 318
    iget v3, v2, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    :cond_11f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 90
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4c

    .line 91
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/SmsHeader;

    .line 92
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v3, v4, :cond_4a

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 94
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 95
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    .line 92
    :goto_4b
    return v0

    .line 90
    .end local v2    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4c
    :goto_4c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 102
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UserDataHeader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v1, "{ ConcatRef "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const-string/jumbo v2, "unset"

    const-string v3, ", msgCount="

    const-string v4, " }"

    if-nez v1, :cond_1f

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 332
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ refNumber="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", seqNumber="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isEightBits="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_89
    const-string v1, ", PortAddrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v1, :cond_96

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e8

    .line 342
    :cond_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ destPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", areEightBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :goto_e8
    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v1, :cond_104

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", languageShiftTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_104
    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v1, :cond_120

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", languageTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_120
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_126
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 354
    .local v2, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string v5, ", SpecialSmsMsg "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{ msgIndType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .end local v2    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    goto :goto_126

    .line 359
    :cond_16a
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_170
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 360
    .local v2, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v3, ", MiscElt "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", data="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .end local v2    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    goto :goto_170

    .line 366
    :cond_1d3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
