.class public Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;
.super Ljava/lang/Object;
.source "SemTelephonyThreadManager.java"


# instance fields
.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

.field private blacklist mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

.field private blacklist mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

.field private blacklist mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

.field private blacklist scCmdResult:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist getSemTelephonyCommendToRIL()Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;
    .registers 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    if-nez v0, :cond_10

    .line 122
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_13

    .line 130
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    return-object p0

    :catch_13
    move-exception v0

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyCommendToRIL:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    throw v0
.end method

.method private blacklist messengerNSRIStart()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    if-nez v0, :cond_19

    .line 62
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    const-string v0, "SemTelephonyThreadManager"

    const-string v1, "[NSRI_Messenger] messengerNSRIStart"

    .line 63
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist NSRI_requestProc(I[B)[B
    .registers 7

    .line 69
    const-class v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->messengerNSRIStart()V

    const-string v1, "SemTelephonyThreadManager"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NSRI_Messenger] NSRI_requestProc() ==START==  datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyMessengerNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->commonNSRIRequestProcCmd([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    const-string p1, "SemTelephonyThreadManager"

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_Messenger] NSRI_requestProc()  ==END== retResult.length="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    monitor-exit v0

    return-object p0

    :catchall_41
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public blacklist checkNSRIUSIMstate_int()I
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    const-string v1, "SemTelephonyThreadManager"

    if-nez v0, :cond_19

    .line 107
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    const-string v0, "[NSRI_SMS] create "

    .line 108
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_19
    const/4 v0, 0x0

    const-string v2, "[NSRI_SMS] checkNSRIUsimCmd() ==START==  "

    .line 112
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz p0, :cond_27

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->checkNSRIUsimCmd()I

    move-result v0

    :cond_27
    return v0
.end method

.method public blacklist getCommendToRILInfo(II)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->getSemTelephonyCommendToRIL()Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->getInfo(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setGbaBootstrappingParams(Lcom/android/internal/telephony/Phone;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    if-nez v0, :cond_b

    .line 145
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-direct {v0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    .line 147
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SemTelephonyThreadManager"

    const-string v1, "UICC operation start"

    .line 148
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonyUiccOperation:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist sms_NSRI_decryptsms(I[B)[B
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-nez v0, :cond_10

    .line 80
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_SMS] sms_NSRI_decryptsms() ==START==  in_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephonyThreadManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz v0, :cond_30

    .line 86
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->smsNSRIDecryptCmd([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 88
    :cond_30
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    return-object p0
.end method

.method public blacklist sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .registers 7

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-nez v0, :cond_10

    .line 93
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_SMS] sms_NSRI_decryptsmsintxside() ==START==  in_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  phonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SemTelephonyThreadManager"

    .line 98
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz v0, :cond_3c

    .line 100
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 102
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    return-object p0
.end method

.method public blacklist sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .registers 7

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-nez v0, :cond_10

    .line 48
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NSRI_SMS] sms_NSRI_encryptsms() ==START==  in_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  phonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SemTelephonyThreadManager"

    .line 53
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->mSemTelephonySmsNSRI:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    if-eqz v0, :cond_3c

    .line 55
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    .line 57
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->scCmdResult:[B

    return-object p0
.end method

.method public blacklist supplyPerso(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .registers 3

    .line 134
    new-instance p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 135
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
