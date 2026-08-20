.class public Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
.super Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;
.source "SmartCardEmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field public static TAG:Ljava/lang/String; = "SmartCardEmailPolicy"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEmailAccts:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public final broadcastIntentAsUser(ZII)V
    .registers 6

    .line 584
    new-instance p2, Landroid/content/Intent;

    const-string v0, "edm.intent.action.smartcard.email.authentication"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 585
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "edm.intent.extra.smartcard.authentication.enabled"

    .line 586
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 589
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 590
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string/jumbo v0, "signatureCertificateAlias"

    const-string v1, "encryptionCertificateAlias"

    const/4 v2, 0x0

    .line 522
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object p3

    .line 524
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 525
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "EmailAddress"

    .line 526
    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "containerID"

    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "adminUid"

    .line 528
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 531
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_41

    aput-object v1, v3, v6

    goto :goto_49

    .line 533
    :cond_41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    aput-object v0, v3, v6

    .line 537
    :cond_49
    :goto_49
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardEmailTable"

    invoke-virtual {v5, v7, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 539
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 540
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 541
    :cond_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 542
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    aget-object v7, v3, v6

    .line 543
    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    return-object v2

    .line 549
    :cond_72
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAliasName() alias name ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_88} :catch_89

    goto :goto_90

    .line 551
    :catch_89
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getAliasName() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    return-object v2
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 79
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getEmailAcctCountAsUser(IILjava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    .line 561
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 563
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 564
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "emailAuthEnabled"

    const/4 v4, 0x1

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "adminUid"

    .line 567
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_3b

    const-string v1, "EmailAddress"

    .line 569
    invoke-virtual {v2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3b
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardEmailTable"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    .line 573
    :cond_45
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getEmailAcctCountAsUser() count ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_5c

    goto :goto_63

    .line 575
    :catch_5c
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getEmailAcctCountAsUser() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return v0
.end method

.method public getSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 308
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 309
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, "encryptionCertificateAlias"

    .line 312
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->migrationAliasName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 290
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 292
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "signatureCertificateAlias"

    .line 293
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->migrationAliasName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 183
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isAuthenticationEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 202
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final isAuthenticationEnabledAsUser(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isCredentialRequired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 149
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 171
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public final migrationAliasName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_3

    return-object p1

    :cond_3
    const-string p0, "Key Management"

    .line 324
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p1, "Identity"

    goto :goto_2e

    :cond_e
    const-string p0, "PIV Authentication"

    .line 326
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p1, "Encryption"

    goto :goto_2e

    :cond_19
    const-string p0, "Digital Signature"

    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p1, "Signature"

    goto :goto_2e

    :cond_24
    const-string p0, "Card Authentication"

    .line 330
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p1, "Card ID"

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    .line 595
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 596
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SmartcardEmail Policy service is added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_34

    :catchall_1a
    move-exception p0

    .line 598
    sget-object p1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure add service"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 489
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 490
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 495
    :cond_12
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V

    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3

    return-void
.end method

.method public removeSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "SmartCardEmailTable"

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 441
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 442
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    if-nez p2, :cond_f

    return v2

    .line 448
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 452
    :try_start_17
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    .line 453
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "containerID"

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "EmailAddress"

    .line 455
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_52

    .line 462
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "encryptionCertificateAlias"

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4e} :catch_53

    if-eqz p0, :cond_5b

    const/4 p0, 0x1

    return p0

    :cond_52
    return v2

    .line 475
    :catch_53
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeSMIMEEncryptionCertificate() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return v2
.end method

.method public removeSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "SmartCardEmailTable"

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 394
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 395
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    if-nez p2, :cond_f

    return v2

    .line 401
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 405
    :try_start_17
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    .line 406
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "containerID"

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "EmailAddress"

    .line 408
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_53

    .line 415
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo p2, "signatureCertificateAlias"

    const/4 v1, 0x0

    .line 416
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_54

    if-eqz p0, :cond_5c

    const/4 p0, 0x1

    return p0

    :cond_53
    return v2

    .line 428
    :catch_54
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeSMIMESignatureCertificate() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return v2
.end method

.method public requireCredentials(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 12

    const-string v0, "SmartCardEmailTable"

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 94
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v3, 0x0

    if-nez p2, :cond_10

    return v3

    .line 99
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 103
    :try_start_18
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    .line 104
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "containerID"

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "EmailAddress"

    .line 106
    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result p2

    .line 110
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_41} :catch_86

    const-string v6, "emailAuthEnabled"

    const/4 v7, 0x1

    if-lez v5, :cond_5e

    .line 114
    :try_start_46
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-ne p3, v7, :cond_4f

    move p3, v7

    goto :goto_50

    :cond_4f
    move p3, v3

    .line 115
    :goto_50
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    iget-object p3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p3, v0, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p3

    goto :goto_70

    :cond_5e
    if-ne p3, v7, :cond_62

    move p3, v7

    goto :goto_63

    :cond_62
    move p3, v3

    .line 120
    :goto_63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v4, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object p3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p3, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p3

    :goto_70
    if-eqz p3, :cond_8e

    .line 127
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result p1

    if-nez p2, :cond_7e

    if-lez p1, :cond_7e

    .line 129
    invoke-virtual {p0, v7, v2, v1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V

    goto :goto_85

    :cond_7e
    if-lez p2, :cond_85

    if-nez p1, :cond_85

    .line 131
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_85} :catch_86

    :cond_85
    :goto_85
    return v7

    .line 136
    :catch_86
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "requireCredentials() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return v3
.end method

.method public setForceSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "encryptionCertificateAlias"

    const-string v1, "SmartCardEmailTable"

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 343
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 344
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v4, 0x0

    if-eqz p2, :cond_63

    if-nez p3, :cond_14

    goto :goto_63

    .line 349
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 353
    :try_start_1c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    .line 354
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "containerID"

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "EmailAddress"

    .line 356
    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_5a

    .line 363
    invoke-virtual {p0, v0, v3, v2, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_63

    .line 368
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 369
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_56} :catch_5b

    if-eqz p0, :cond_63

    const/4 p0, 0x1

    return p0

    :cond_5a
    return v4

    .line 381
    :catch_5b
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setForceSMIMEEncryptionCertificate() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    return v4
.end method

.method public setForceSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string/jumbo v0, "signatureCertificateAlias"

    const-string v1, "SmartCardEmailTable"

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 237
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v4, 0x0

    if-eqz p2, :cond_64

    if-nez p3, :cond_15

    goto :goto_64

    .line 242
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 246
    :try_start_1d
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "adminUid"

    .line 247
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "containerID"

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "EmailAddress"

    .line 249
    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_5b

    .line 256
    invoke-virtual {p0, v0, v3, v2, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_64

    .line 261
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 262
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_57} :catch_5c

    if-eqz p0, :cond_64

    const/4 p0, 0x1

    return p0

    :cond_5b
    return v4

    .line 274
    :catch_5c
    sget-object p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setForceSMIMESignatureCertificate() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    :goto_64
    return v4
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
