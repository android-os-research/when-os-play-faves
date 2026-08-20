.class public Lcom/android/server/emailksproxy/EmailKeystoreService;
.super Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreErrors;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "EmailKeystoreService"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 55
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    if-eqz p0, :cond_70

    .line 309
    invoke-static {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 310
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 311
    new-instance v2, Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    invoke-direct {v2, v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 338
    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 340
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 342
    sget-boolean v4, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v4, :cond_45

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyChainConnection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EmailKeystoreService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_45
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 348
    invoke-virtual {p0, v3, v2, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    .line 349
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_68

    .line 353
    new-instance p1, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/IKeyChainService;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection-IA;)V

    return-object p1

    .line 351
    :cond_68
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Could not bind to KeyChainService"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 307
    :cond_70
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 2

    .line 357
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_d

    goto :goto_15

    .line 359
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public final broadcastStorageChange()V
    .registers 3

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getKeystoreStatus()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 224
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_4a

    const-string v1, "EmailKeystoreService"

    if-nez p0, :cond_16

    :try_start_10
    const-string p0, "getKeystoreStatus() - Failed to get KeyStore Instance"

    .line 226
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 230
    :cond_16
    sget-object v2, Lcom/android/server/emailksproxy/EmailKeystoreService$2;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/KeyStore$State;->ordinal()I

    move-result p0

    aget p0, v2, p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_4a

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_30

    if-eq p0, v3, :cond_2e

    if-eq p0, v2, :cond_2c

    goto :goto_31

    :cond_2c
    move v0, v2

    goto :goto_31

    :cond_2e
    move v0, v3

    goto :goto_31

    :cond_30
    move v0, v4

    .line 248
    :goto_31
    sget-boolean p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz p0, :cond_49

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeystoreStatus returns: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return v0

    :catch_4a
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_59

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    goto :goto_59

    :cond_d
    const/4 v0, 0x0

    .line 173
    :try_start_e
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p0

    const-string v1, "EmailKeystoreService"

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "grantAccessforAKS call setGrant : uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " alias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 176
    invoke-interface {p0, p1, p2, v1}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)Z
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3f

    .line 179
    :try_start_3b
    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_59

    :catchall_3f
    move-exception p0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    .line 181
    :cond_45
    throw p0
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_46} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_50
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_4b
    .catch Ljava/lang/AssertionError; {:try_start_3b .. :try_end_46} :catch_46

    :catch_46
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_59

    :catch_4b
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    :catch_50
    move-exception p0

    .line 187
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_59

    :catch_55
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_59
    :goto_59
    return-void
.end method

.method public installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    if-nez p1, :cond_c

    const/4 p0, -0x2

    return p0

    .line 205
    :cond_c
    :try_start_c
    iget-object p1, p1, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    move v1, v0

    .line 207
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    .line 208
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->installCaCertificate([B)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_20

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    return v0

    :catch_20
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public final installCaCertificate([B)V
    .registers 4

    .line 255
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 257
    :try_start_5
    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_36

    .line 258
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_19

    .line 260
    sget-boolean p1, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz p1, :cond_17

    const-string p1, "EmailKeystoreService"

    const-string v1, "CA Certificate parse error"

    .line 261
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_17
    monitor-exit v0

    return-void

    .line 265
    :cond_19
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 270
    sget-boolean p1, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz p1, :cond_31

    const-string p1, "EmailKeystoreService"

    const-string v1, "CA Certificate successfully installed"

    .line 271
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_31
    monitor-exit v0

    goto :goto_55

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    :try_start_35
    throw p1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception p1

    .line 281
    sget-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v0, :cond_42

    const-string v0, "EmailKeystoreService"

    const-string v1, "CertificateException while installing CA Certificate"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_42
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_55

    :catch_46
    move-exception p1

    .line 276
    sget-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v0, :cond_52

    const-string v0, "EmailKeystoreService"

    const-string v1, "IOException while installing CA Certificate"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    :goto_55
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->broadcastStorageChange()V

    return-void
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    if-nez p1, :cond_b

    return v0

    :cond_b
    const-wide/16 v0, 0x0

    const/4 p0, 0x4

    const/4 v2, 0x2

    :try_start_f
    const-string v3, "PKCS12"

    .line 114
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 115
    iget v4, p1, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    new-array v4, v4, [B

    .line 116
    iget-object p1, p1, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    .line 117
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 118
    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 119
    invoke-virtual {v3, p2, p3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    .line 122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 124
    sget-boolean p3, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz p3, :cond_50

    const-string p3, "EmailKeystoreService"

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const-string p3, "AndroidKeyStore"

    .line 127
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p3

    const/4 p4, 0x0

    .line 128
    invoke-virtual {p3, p4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 129
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p4

    invoke-virtual {p3, p2, p1, p4}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    :try_end_65
    .catch Ljava/security/KeyStoreException; {:try_start_f .. :try_end_65} :catch_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_65} :catch_8a
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_65} :catch_84
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_65} :catch_7c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_f .. :try_end_65} :catch_74
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_65} :catch_6c
    .catchall {:try_start_f .. :try_end_65} :catchall_6a

    const/4 p0, 0x0

    .line 156
    :goto_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_6a
    move-exception p0

    goto :goto_9a

    :catch_6c
    move-exception p1

    .line 153
    :try_start_6d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_74
    move-exception p0

    .line 150
    :try_start_75
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_6a

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_7c
    move-exception p1

    .line 146
    :try_start_7d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_6a

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_84
    move-exception p0

    .line 142
    :try_start_85
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/4 p0, 0x3

    goto :goto_66

    :catch_8a
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_6a

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_92
    move-exception p0

    .line 134
    :try_start_93
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_6a

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_9a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    throw p0
.end method

.method public isAliasExists(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isCallerSignedByAndroid()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 83
    :cond_8
    sget-boolean p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    const-string v1, "EmailKeystoreService"

    if-eqz p0, :cond_27

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAliasExists:: calling uid : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :try_start_27
    const-string p0, "AndroidKeyStore"

    .line 88
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 91
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const-string/jumbo p0, "isAliasExists:: returns SUCCESS"

    .line 92
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_40

    const/4 p0, 0x0

    return p0

    :cond_3f
    return v0

    :catch_40
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public final isCallerSignedByAndroid()Z
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz v0, :cond_20

    const-string v1, "android"

    .line 366
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final isHardwareBackedKey([B)Z
    .registers 4

    const/4 p0, 0x0

    .line 395
    :try_start_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    if-nez p1, :cond_16

    return p0

    .line 400
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_25

    return p0

    .line 404
    :cond_25
    new-instance v0, Lsun/security/x509/AlgorithmId;

    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_36

    return p0

    .line 408
    :cond_36
    invoke-static {p1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3b

    return p0

    :catch_3b
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "System Service"

    const-string v0, "Failed to parse key data"

    .line 412
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final makeUidWithUserID(II)I
    .registers 3

    if-gez p1, :cond_3

    return p2

    :cond_3
    const p0, 0x186a0

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public final parseCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string p0, "X.509"

    .line 290
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 291
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method
