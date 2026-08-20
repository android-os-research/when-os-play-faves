.class public Lcom/samsung/android/telephony/SemSmsInterface;
.super Ljava/lang/Object;
.source "SemSmsInterface.java"


# static fields
.field public static final CMAS_GET_CELL_ID:Ljava/lang/String; = "getCid"

.field public static final CMAS_GET_CMAS_ALERT_HANDLING:Ljava/lang/String; = "getCmasAlertHandling"

.field public static final CMAS_GET_CMAS_CATEGORY:Ljava/lang/String; = "getCmasCategory"

.field public static final CMAS_GET_CMAS_CERTAINTY:Ljava/lang/String; = "getCmasCertainty"

.field public static final CMAS_GET_CMAS_MESSAGE_ID:Ljava/lang/String; = "getCmasMessageID"

.field public static final CMAS_GET_CMAS_MSG_EXPIRES:Ljava/lang/String; = "getCmasMsgExpires"

.field public static final CMAS_GET_CMAS_RECORDTYPE_FIRST_EXISTS:Ljava/lang/String; = "getCmasRecordTypeFirstExists"

.field public static final CMAS_GET_CMAS_RECORDTYPE_SECOND_EXISTS:Ljava/lang/String; = "getCmasRecordTypeSecondExists"

.field public static final CMAS_GET_CMAS_RESPONSE_TYPE:Ljava/lang/String; = "getCmasResponseType"

.field public static final CMAS_GET_CMAS_SEVERITY:Ljava/lang/String; = "getCmasSeverity"

.field public static final CMAS_GET_CMAS_URGENCY:Ljava/lang/String; = "getCmasUrgency"

.field public static final CMAS_GET_GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "getGeographicalScope"

.field public static final CMAS_GET_LANGUAGE_CODE:Ljava/lang/String; = "getLanguageCode"

.field public static final CMAS_GET_LOCATION_AREA_CODE:Ljava/lang/String; = "getLac"

.field public static final CMAS_GET_MESSAGE_BODY:Ljava/lang/String; = "getMessageBody"

.field public static final CMAS_GET_MESSAGE_CLASS:Ljava/lang/String; = "getMessageClass"

.field public static final CMAS_GET_MESSAGE_FORMAT:Ljava/lang/String; = "getMessageFormat"

.field public static final CMAS_GET_PLMN:Ljava/lang/String; = "getPlmn"

.field public static final CMAS_GET_SERIAL_NUMBER:Ljava/lang/String; = "getSerialNumber"

.field public static final CMAS_GET_SERVICE_CATEGORY:Ljava/lang/String; = "getServiceCategory"

.field public static final CMAS_GET_WARNING_TYPE:Ljava/lang/String; = "getWarningType"

.field public static final CMAS_IS_CMAS_MESSAGE:Ljava/lang/String; = "isCmasMessage"

.field public static final CMAS_IS_EMERGENCY_MESSAGE:Ljava/lang/String; = "isEmergencyMessage"

.field public static final CMAS_IS_ETWS_MESSAGE:Ljava/lang/String; = "isEtwsMessage"

.field public static final SMS_GET_CALLBACK_NUMBER:Ljava/lang/String; = "getCallbackNumber"

.field public static final SMS_GET_DEST_PORT:Ljava/lang/String; = "getDestPortAddr"

.field public static final SMS_GET_LINK_URL:Ljava/lang/String; = "getlinkUrl"

.field public static final SMS_GET_MESSAGE_PRIORITY:Ljava/lang/String; = "getMessagePriority"

.field public static final SMS_GET_READ_CONFIRM_ID:Ljava/lang/String; = "getReadConfirmId"

.field public static final SMS_GET_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "getSafeMessageIndication"

.field public static final SMS_GET_SHARED_APP_ID:Ljava/lang/String; = "getSharedAppId"

.field public static final SMS_GET_SHARED_CMD:Ljava/lang/String; = "getSharedCmd"

.field public static final SMS_GET_SHARED_PAYLOAD:Ljava/lang/String; = "getSharedPayLoad"

.field public static final SMS_GET_TELESERVICE_ID:Ljava/lang/String; = "getTeleserviceId"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZIII)[I
    .registers 7

    const-string v0, "SecSmsManager"

    const-string v1, "SemSmsInterface.getTextEncoding"

    .line 247
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_10

    if-lez p4, :cond_10

    .line 249
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZIII)[I

    move-result-object p0

    return-object p0

    .line 251
    :cond_10
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)[I

    move-result-object p0

    return-object p0
.end method

.method public static getCmasMessageValue(Lcom/samsung/android/telephony/SemSmsCbMessage;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemSmsInterface.getCmasMessageValue : API = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_246

    goto/16 :goto_15a

    :sswitch_23
    const-string v0, "getSerialNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_15a

    :cond_2d
    const/16 v2, 0x17

    goto/16 :goto_15a

    :sswitch_31
    const-string v0, "isEtwsMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_15a

    :cond_3b
    const/16 v2, 0x16

    goto/16 :goto_15a

    :sswitch_3f
    const-string v0, "getMessageFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto/16 :goto_15a

    :cond_49
    const/16 v2, 0x15

    goto/16 :goto_15a

    :sswitch_4d
    const-string v0, "getCmasSeverity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto/16 :goto_15a

    :cond_57
    const/16 v2, 0x14

    goto/16 :goto_15a

    :sswitch_5b
    const-string v0, "getCmasResponseType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto/16 :goto_15a

    :cond_65
    const/16 v2, 0x13

    goto/16 :goto_15a

    :sswitch_69
    const-string v0, "getCmasRecordTypeSecondExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto/16 :goto_15a

    :cond_73
    const/16 v2, 0x12

    goto/16 :goto_15a

    :sswitch_77
    const-string v0, "getServiceCategory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    goto/16 :goto_15a

    :cond_81
    const/16 v2, 0x11

    goto/16 :goto_15a

    :sswitch_85
    const-string v0, "isEmergencyMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8f

    goto/16 :goto_15a

    :cond_8f
    const/16 v2, 0x10

    goto/16 :goto_15a

    :sswitch_93
    const-string v0, "getMessageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9d

    goto/16 :goto_15a

    :cond_9d
    const/16 v2, 0xf

    goto/16 :goto_15a

    :sswitch_a1
    const-string v0, "getPlmn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto/16 :goto_15a

    :cond_ab
    const/16 v2, 0xe

    goto/16 :goto_15a

    :sswitch_af
    const-string v0, "getCmasCategory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b9

    goto/16 :goto_15a

    :cond_b9
    const/16 v2, 0xd

    goto/16 :goto_15a

    :sswitch_bd
    const-string v0, "getLanguageCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c7

    goto/16 :goto_15a

    :cond_c7
    const/16 v2, 0xc

    goto/16 :goto_15a

    :sswitch_cb
    const-string v0, "getGeographicalScope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d5

    goto/16 :goto_15a

    :cond_d5
    const/16 v2, 0xb

    goto/16 :goto_15a

    :sswitch_d9
    const-string v0, "getWarningType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e3

    goto/16 :goto_15a

    :cond_e3
    const/16 v2, 0xa

    goto/16 :goto_15a

    :sswitch_e7
    const-string v0, "isCmasMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f1

    goto/16 :goto_15a

    :cond_f1
    const/16 v2, 0x9

    goto/16 :goto_15a

    :sswitch_f5
    const-string v0, "getLac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ff

    goto/16 :goto_15a

    :cond_ff
    const/16 v2, 0x8

    goto/16 :goto_15a

    :sswitch_103
    const-string v0, "getCid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10c

    goto :goto_15a

    :cond_10c
    const/4 v2, 0x7

    goto :goto_15a

    :sswitch_10e
    const-string v0, "getCmasRecordTypeFirstExists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_117

    goto :goto_15a

    :cond_117
    const/4 v2, 0x6

    goto :goto_15a

    :sswitch_119
    const-string v0, "getMessageBody"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_122

    goto :goto_15a

    :cond_122
    const/4 v2, 0x5

    goto :goto_15a

    :sswitch_124
    const-string v0, "getCmasUrgency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12d

    goto :goto_15a

    :cond_12d
    const/4 v2, 0x4

    goto :goto_15a

    :sswitch_12f
    const-string v0, "getCmasAlertHandling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_138

    goto :goto_15a

    :cond_138
    const/4 v2, 0x3

    goto :goto_15a

    :sswitch_13a
    const-string v0, "getCmasMsgExpires"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_143

    goto :goto_15a

    :cond_143
    const/4 v2, 0x2

    goto :goto_15a

    :sswitch_145
    const-string v0, "getCmasCertainty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14e

    goto :goto_15a

    :cond_14e
    const/4 v2, 0x1

    goto :goto_15a

    :sswitch_150
    const-string v0, "getCmasMessageID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_159

    goto :goto_15a

    :cond_159
    const/4 v2, 0x0

    :goto_15a
    packed-switch v2, :pswitch_data_2a8

    const-string p0, "NOT Supported API. Need to add API"

    .line 353
    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NOT Supported API"

    return-object p0

    .line 311
    :pswitch_165
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getSerialNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 341
    :pswitch_16e
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->isEtwsMessage()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :pswitch_177
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getMessageFormat()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 321
    :pswitch_180
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasSeverity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :pswitch_189
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasResponseType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :pswitch_192
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :pswitch_19b
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getServiceCategory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    :pswitch_1a4
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->isEmergencyMessage()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :pswitch_1ad
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :pswitch_1ba
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :pswitch_1c3
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasCategory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :pswitch_1cc
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :pswitch_1d1
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getGeographicalScope()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 345
    :pswitch_1da
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :pswitch_1e7
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->isCmasMessage()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :pswitch_1f0
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 349
    :pswitch_1fd
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :pswitch_20a
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasRecordTypeFirstExists()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :pswitch_213
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 319
    :pswitch_218
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasUrgency()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 327
    :pswitch_221
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasAlertHandling()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :pswitch_22a
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasMsgExpires()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :pswitch_233
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasCertainty()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 315
    :pswitch_23c
    invoke-virtual {p0}, Lcom/samsung/android/telephony/SemSmsCbMessage;->getCmasMessageId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_246
    .sparse-switch
        -0x760e8710 -> :sswitch_150
        -0x73eb2fcb -> :sswitch_145
        -0x68304f5b -> :sswitch_13a
        -0x6518af11 -> :sswitch_12f
        -0x5d890ba9 -> :sswitch_124
        -0x5a3c66ed -> :sswitch_119
        -0x51457071 -> :sswitch_10e
        -0x4a77ce78 -> :sswitch_103
        -0x4a77ada8 -> :sswitch_f5
        -0x481c493f -> :sswitch_e7
        -0x42d53440 -> :sswitch_d9
        -0x1c8cae24 -> :sswitch_cb
        -0x1bc42425 -> :sswitch_bd
        -0xe8b8250 -> :sswitch_af
        -0x47c0aed -> :sswitch_a1
        0x12bc3827 -> :sswitch_93
        0x18065a80 -> :sswitch_85
        0x30bf349d -> :sswitch_77
        0x3a0c69ed -> :sswitch_69
        0x3f2726cd -> :sswitch_5b
        0x468ed3af -> :sswitch_4d
        0x4a1b3f28 -> :sswitch_3f
        0x4d90be32 -> :sswitch_31
        0x65f110d3 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_23c
        :pswitch_233
        :pswitch_22a
        :pswitch_221
        :pswitch_218
        :pswitch_213
        :pswitch_20a
        :pswitch_1fd
        :pswitch_1f0
        :pswitch_1e7
        :pswitch_1da
        :pswitch_1d1
        :pswitch_1cc
        :pswitch_1c3
        :pswitch_1ba
        :pswitch_1ad
        :pswitch_1a4
        :pswitch_19b
        :pswitch_192
        :pswitch_189
        :pswitch_180
        :pswitch_177
        :pswitch_16e
        :pswitch_165
    .end packed-switch
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 4

    const-string v0, "SecSmsManager"

    const-string v1, "SemSmsInterface.getDefaultRespondViaMessageApplication"

    .line 370
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsMessageValue(Landroid/telephony/SmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemSmsInterface.getSmsMessageValue : API = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSmsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_e8

    goto/16 :goto_96

    :sswitch_23
    const-string v0, "getSharedPayLoad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_96

    :cond_2d
    const/16 v2, 0x9

    goto/16 :goto_96

    :sswitch_31
    const-string v0, "getCallbackNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_96

    :cond_3b
    const/16 v2, 0x8

    goto/16 :goto_96

    :sswitch_3f
    const-string v0, "getDestPortAddr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_96

    :cond_48
    const/4 v2, 0x7

    goto :goto_96

    :sswitch_4a
    const-string v0, "getReadConfirmId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_96

    :cond_53
    const/4 v2, 0x6

    goto :goto_96

    :sswitch_55
    const-string v0, "getTeleserviceId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_96

    :cond_5e
    const/4 v2, 0x5

    goto :goto_96

    :sswitch_60
    const-string v0, "getSharedAppId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_96

    :cond_69
    const/4 v2, 0x4

    goto :goto_96

    :sswitch_6b
    const-string v0, "getlinkUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto :goto_96

    :cond_74
    const/4 v2, 0x3

    goto :goto_96

    :sswitch_76
    const-string v0, "getMessagePriority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_96

    :cond_7f
    const/4 v2, 0x2

    goto :goto_96

    :sswitch_81
    const-string v0, "getSharedCmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    goto :goto_96

    :cond_8a
    const/4 v2, 0x1

    goto :goto_96

    :sswitch_8c
    const-string v0, "getSafeMessageIndication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    goto :goto_96

    :cond_95
    const/4 v2, 0x0

    :goto_96
    packed-switch v2, :pswitch_data_112

    const-string p0, "NOT Supported API. Need to add API"

    .line 287
    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NOT Supported API"

    return-object p0

    .line 273
    :pswitch_a1
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :pswitch_a6
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :pswitch_ab
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDestPortAddr()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :pswitch_b4
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getReadConfirmId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :pswitch_bd
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :pswitch_c6
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :pswitch_cb
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getlinkUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :pswitch_d0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :pswitch_d9
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedCmd()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :pswitch_de
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSafeMessageIndication()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_e8
    .sparse-switch
        -0x68709500 -> :sswitch_8c
        -0x5ed7c821 -> :sswitch_81
        -0x3171476b -> :sswitch_76
        -0x1add7901 -> :sswitch_6b
        -0x820df7f -> :sswitch_60
        -0x491170 -> :sswitch_55
        0x1bab2b4f -> :sswitch_4a
        0x3bcdb34a -> :sswitch_3f
        0x3c87ace4 -> :sswitch_31
        0x7cfe31d3 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d9
        :pswitch_d0
        :pswitch_cb
        :pswitch_c6
        :pswitch_bd
        :pswitch_b4
        :pswitch_ab
        :pswitch_a6
        :pswitch_a1
    .end packed-switch
.end method
