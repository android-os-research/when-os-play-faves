.class public final Lcom/android/internal/telephony/SemDomainNotificationController;
.super Landroid/os/Handler;
.source "SemDomainNotificationController.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDomainNotificationHistory:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mNeedSendStopDAN:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mNeedSendStopDAN:Z

    .line 49
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mDomainNotificationHistory:Lcom/android/internal/telephony/LocalLog;

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;Z)V
    .registers 5

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DomainNotification"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_27

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mDomainNotificationHistory:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_27
    return-void
.end method


# virtual methods
.method blacklist controlDan(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAN: CS_ONLY - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_16
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2d

    const/16 v0, 0x10

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAN: EMERGENCY_CALL_START - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_2d
    const/4 v2, 0x3

    if-ne p1, v2, :cond_52

    const/16 v0, 0x20

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAN: EMERGENCY_CALL_STOP - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    :goto_43
    iget-object p2, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->sendDomainChangeSms(B)Z

    move-result p2

    if-eqz p2, :cond_4c

    goto :goto_4e

    :cond_4c
    const-string p1, "No smsDispatchersController"

    .line 165
    :goto_4e
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    return p2

    .line 160
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "DomainNotification:"

    .line 194
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "   "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SentDanSmsStatus="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemDomainNotificationController;->getSentDanSmsStatus()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, " History:"

    .line 197
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mDomainNotificationHistory:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method blacklist firePendingCsOnlyDanTimer()V
    .registers 3

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemDomainNotificationController;->useDomainAvailabilityNotification()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "Send CS-only DAN immediately"

    .line 135
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18
    return-void
.end method

.method blacklist getSentDanSmsStatus()Z
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent_dan_sms_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 172
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    :cond_6
    const-string p1, "EVENT_CS_ONLY_DAN_TIMEOUT Received"

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemDomainNotificationController;->controlDan(ILjava/lang/String;)Z

    :goto_b
    return-void
.end method

.method blacklist prepareE911StopDan(Z)V
    .registers 3

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemDomainNotificationController;->useDomainAvailabilityNotification()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_25

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemDomainNotificationController;->getSentDanSmsStatus()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const-string p1, "Send E911 stop DAN after ECBM"

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mNeedSendStopDAN:Z

    goto :goto_28

    :cond_25
    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mNeedSendStopDAN:Z

    :cond_28
    :goto_28
    return-void
.end method

.method blacklist resetDanState()V
    .registers 2

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mNeedSendStopDAN:Z

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method blacklist setSentDanSmsStatus(Z)V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent_dan_sms_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method blacklist startCsOnlyDanTimer()V
    .registers 5

    const-string v0, "Send CS-only DAN after 12 secs"

    const/4 v1, 0x1

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    const-wide/16 v2, 0x2ee0

    .line 127
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method blacklist triggerE911StopDan(Ljava/lang/String;)V
    .registers 3

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemDomainNotificationController;->useDomainAvailabilityNotification()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mNeedSendStopDAN:Z

    if-eqz v0, :cond_23

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x3

    const-string v0, "Send E911 stop DAN"

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SemDomainNotificationController;->controlDan(ILjava/lang/String;)Z

    goto :goto_1d

    :cond_17
    const/4 p1, 0x1

    const-string v0, "Don\'t send E911 stop DAN (No PRL version)"

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;Z)V

    :goto_1d
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemDomainNotificationController;->setSentDanSmsStatus(Z)V

    .line 116
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mNeedSendStopDAN:Z

    :cond_23
    return-void
.end method

.method blacklist useDomainAvailabilityNotification()Z
    .registers 4

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    const-string v1, "VZW"

    const-string v2, "USC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/SemDomainNotificationController;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useDomainAvailabilityNotification - false. isVolteEnabledByPlatform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDomainNotificationController;->log(Ljava/lang/String;)V

    :cond_34
    const/4 p0, 0x0

    return p0
.end method
