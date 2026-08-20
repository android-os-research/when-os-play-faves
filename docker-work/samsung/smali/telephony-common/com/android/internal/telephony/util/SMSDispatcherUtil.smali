.class public final Lcom/android/internal/telephony/util/SMSDispatcherUtil;
.super Ljava/lang/Object;
.source "SMSDispatcherUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3

    if-eqz p0, :cond_7

    .line 244
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLengthCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    .line 246
    :cond_7
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateLengthCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 3

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist calculateLengthGsm(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 2

    .line 259
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 17

    if-eqz p1, :cond_10

    move v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 345
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0

    .line 347
    :cond_10
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6

    if-eqz p0, :cond_7

    .line 193
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0

    .line 195
    :cond_7
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6

    if-eqz p0, :cond_7

    .line 52
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0

    .line 54
    :cond_7
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 8

    if-eqz p0, :cond_7

    .line 89
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0

    .line 92
    :cond_7
    invoke-static {p1, p2, p3, p4, p7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduCdma(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 8

    .line 375
    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 5

    .line 211
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 5

    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduCdma(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6

    .line 175
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduCdmaForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 6

    .line 312
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduForAutoLogin(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 8

    if-eqz p0, :cond_7

    .line 288
    invoke-static/range {p1 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduCdmaForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0

    .line 291
    :cond_7
    invoke-static {p1, p2, p3, p4, p7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduGsmForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 5

    .line 227
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 4

    .line 109
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 5

    .line 130
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduGsm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 7

    .line 381
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPduGsmForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .registers 5

    .line 302
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method
