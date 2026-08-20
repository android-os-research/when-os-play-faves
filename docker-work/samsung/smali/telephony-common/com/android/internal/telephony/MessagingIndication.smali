.class public Lcom/android/internal/telephony/MessagingIndication;
.super Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;
.source "MessagingIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist cdmaNewSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 52
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fc

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 54
    new-instance p1, Landroid/telephony/SmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 55
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_25

    .line 56
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_25
    return-void
.end method

.method public blacklist cdmaRuimSmsStorageFull(I)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 68
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fe

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_16

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_16
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "5237ec5f500627b6b844b155e356e603157f9ba6"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist newBroadcastSms(I[B)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 88
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 89
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3fd

    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_20

    .line 93
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist newSms(I[B)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 105
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 108
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p1

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_31

    .line 111
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-nez p1, :cond_26

    move-object v1, v0

    goto :goto_2b

    .line 112
    :cond_26
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_2b
    invoke-direct {p2, v0, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_31
    return-void
.end method

.method public blacklist newSmsOnSim(II)V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 124
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_20

    .line 127
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist newSmsStatusReport(I[B)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 140
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ec

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1c

    .line 143
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1c
    return-void
.end method

.method public blacklist simSmsStorageFull(I)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f8

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_16

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_16
    return-void
.end method
