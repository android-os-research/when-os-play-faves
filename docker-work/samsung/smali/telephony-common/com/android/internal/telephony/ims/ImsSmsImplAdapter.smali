.class public Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImplAdapter.java"


# instance fields
.field private final blacklist mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

.field private blacklist mPhoneId:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    .line 25
    iput p2, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Create ImsSmsImplAdapter["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSmsImplAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist acknowledgeSms(III)V
    .registers 6

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->acknowledgeSms(IIII)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail acknowledgeSms: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public whitelist acknowledgeSmsReport(III)V
    .registers 6

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsReport["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->acknowledgeSmsReport(IIII)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail acknowledgeSmsReport: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(II[B)V
    .registers 6

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsWithPdu["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->acknowledgeSmsWithPdu(III[B)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail acknowledgeSmsWithPdu: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public whitelist getSmsFormat()Ljava/lang/String;
    .registers 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getSmsFormat(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_26

    :catch_9
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail getSmsFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsSmsImplAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_26
    return-object p0
.end method

.method public whitelist onReady()V
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmsReady["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->onSmsReady(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail onReady: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public blacklist registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmsListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t set SmsListener: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public blacklist sendRpSmma(Ljava/lang/String;)V
    .registers 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRpSmma["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->sendRpSmma(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail sendRpSmma: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public whitelist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 18

    move-object v0, p0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsSmsImplAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_1e
    iget-object v3, v0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget v4, v0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_2e

    goto :goto_47

    :catch_2e
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t sendSms: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method public blacklist setRetryCount(II)V
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRetryCount["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsImplAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mCompatFeature:Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsSmsImplAdapter;->mPhoneId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->setRetryCount(III)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail setRetryCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method
