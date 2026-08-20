.class public Lcom/android/internal/telephony/SemPhone;
.super Ljava/lang/Object;
.source "SemPhone.java"


# static fields
.field private static blacklist LOG_TAG:Ljava/lang/String; = "SemPhone"


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;


# direct methods
.method public static synthetic blacklist $r8$lambda$7xILg6sNhtYYTNNc7Hnmht2gAXo(Lcom/android/internal/telephony/CommandException$Error;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemPhone;->lambda$sendErrorResponse$0(Lcom/android/internal/telephony/CommandException$Error;Landroid/os/Message;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/internal/telephony/SemPhone;->mPhoneId:I

    .line 31
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 32
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    return-void
.end method

.method private static synthetic blacklist lambda$sendErrorResponse$0(Lcom/android/internal/telephony/CommandException$Error;Landroid/os/Message;)V
    .registers 4

    .line 50
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 52
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 p0, 0x0

    .line 50
    invoke-static {p1, p0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 53
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5

    .line 36
    sget-object v0, Lcom/android/internal/telephony/SemPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 40
    sget-object v0, Lcom/android/internal/telephony/SemPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .registers 3

    .line 49
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/SemPhone$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/SemPhone$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public blacklist forking(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 4

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 197
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->forking(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_21

    :catch_c
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forking failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist getICBarring(Landroid/os/Message;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_16

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getICBarring(Landroid/os/Message;)V

    return-void

    :cond_16
    const-string v0, "getICBarring is not supported"

    .line 168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhone;->logd(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    return-void
.end method

.method public blacklist getKorRtsState(Z)I
    .registers 5

    const/4 v0, -0x1

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getKorRtsState(Z)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    return p0

    :catch_a
    move-exception p1

    .line 228
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKorRtsState failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1f

    :catchall_1f
    return v0
.end method

.method public blacklist getOCSGLAvailable()Z
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5c

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 103
    instance-of v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v3, :cond_17

    goto :goto_43

    .line 108
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOCSGLAvailable - isAvailableOCSGL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAvailableOCSGLList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhone;->logd(Ljava/lang/String;)V

    .line 111
    iget-boolean p0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    if-eqz p0, :cond_42

    iget-boolean p0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    if-eqz p0, :cond_42

    return v1

    :cond_42
    return v2

    .line 105
    :cond_43
    :goto_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get IccRecords for getOCSGLAvailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    :goto_51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    return v2

    .line 117
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! getOCSGLAvailable is not supported by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    return v2
.end method

.method public blacklist getPreferredNetworkList(Landroid/os/Message;)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getPreferredNetworkList(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist pull(I)V
    .registers 4

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->pull(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_21

    :catch_c
    move-exception p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pull failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist queryCsgList(Landroid/os/Message;)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->queryCsgList(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist selectCsgAuto(Landroid/os/Message;)V
    .registers 8

    const-string v0, "selectCsgAuto close is fail. "

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_91

    .line 128
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "selectCsgAuto"

    .line 131
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhone;->logd(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 134
    :try_start_1b
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xb

    .line 135
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 136
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_4e
    .catchall {:try_start_1b .. :try_end_30} :catchall_4c

    .line 143
    :try_start_30
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_38

    goto/16 :goto_b0

    :catch_38
    move-exception p1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    goto :goto_b0

    :catchall_4c
    move-exception p1

    goto :goto_76

    :catch_4e
    move-exception v3

    .line 139
    :try_start_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectCsgAuto is fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    .line 140
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SemPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    :try_end_68
    .catchall {:try_start_4f .. :try_end_68} :catchall_4c

    .line 143
    :try_start_68
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_6f

    goto :goto_b0

    :catch_6f
    move-exception p1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3e

    .line 143
    :goto_76
    :try_start_76
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7c} :catch_7d

    goto :goto_90

    :catch_7d
    move-exception v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    .line 148
    :goto_90
    throw p1

    .line 150
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! selectCsgAuto is not supported by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhone;->loge(Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    :goto_b0
    return-void
.end method

.method public blacklist selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SemCommandsInterface;->selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setICBarring([Landroid/os/Bundle;Landroid/os/Message;)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Phone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_16

    .line 180
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setICBarring([Landroid/os/Bundle;Landroid/os/Message;)V

    return-void

    :cond_16
    const-string p1, "setICBarring is not supported"

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhone;->logd(Ljava/lang/String;)V

    .line 186
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SemPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    return-void
.end method

.method public blacklist setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .registers 18

    move-object v0, p0

    .line 69
    iget-object v0, v0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/SemCommandsInterface;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setSimOnOff(ILandroid/os/Message;)V
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhone;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimOnOff(ILandroid/os/Message;)V

    return-void
.end method
