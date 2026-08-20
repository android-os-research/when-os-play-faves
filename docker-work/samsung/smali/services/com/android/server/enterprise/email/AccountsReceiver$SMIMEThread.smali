.class public Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMIMEThread"
.end annotation


# instance fields
.field public mAccId:J

.field public mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V
    .registers 4

    .line 238
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 240
    iput-wide p2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 244
    iget-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 245
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 246
    iget v1, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 247
    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 249
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMIME Certificate as Account Creation Time >>>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_2d
    const-string v3, "eas_account_policy"

    .line 251
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v3

    if-eqz v3, :cond_72

    const/4 v4, 0x1

    if-ne v1, v4, :cond_45

    .line 255
    iget-wide v7, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v3

    move-wide v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_72

    :cond_45
    const/4 v4, 0x2

    if-ne v1, v4, :cond_51

    .line 260
    iget-wide v7, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v3

    move-wide v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_72

    :cond_51
    const/4 v4, 0x3

    if-ne v1, v4, :cond_72

    .line 265
    iget-wide v7, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v3

    move-wide v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_5c} :catch_68
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5c} :catch_5d

    goto :goto_72

    :catch_5d
    move-exception p0

    .line 273
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMIMEThread : unexpected Exception occurs. "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    :catch_68
    move-exception p0

    .line 270
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMIMEThread : Failed talking with exchange account policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :cond_72
    :goto_72
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<<<< SMIME Certificate as Account Creation Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
