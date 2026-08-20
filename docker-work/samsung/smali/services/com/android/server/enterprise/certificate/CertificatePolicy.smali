.class public Lcom/android/server/enterprise/certificate/CertificatePolicy;
.super Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;
.source "CertificatePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;
    }
.end annotation


# static fields
.field public static final ADD_TRUSTED_LIST:I = 0x0

.field public static final ADD_UNTRUSTED_LIST:I = 0x1

.field public static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field public static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "CertificatePolicy"

.field public static final CERT_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.certinstaller"

.field public static final CHROME_MODULE:Ljava/lang/String; = "Chrome_module"

.field public static final GET_TRUSTED_LIST:I = 0x4

.field public static final GET_UNTRUSTED_LIST:I = 0x5

.field public static final MIGRATION_DONE:Ljava/lang/String; = "ok"

.field public static final PACKAGE_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.packageinstaller"

.field public static final PERFORM_MIGRATION_KEY:Ljava/lang/String; = "cert_migration"

.field public static final PERM_APP_PKEY_HOST_DOT:Ljava/lang/String; = "."

.field public static final PERM_APP_PKEY_HOST_WILDCARD:Ljava/lang/String; = "*"

.field public static final PERM_APP_PKEY_PORT_WILDCARD:I = -0x1

.field public static final PREFIX_SYSTEM:Ljava/lang/String; = "system:"

.field public static final REMOVE_TRUSTED_LIST:I = 0x2

.field public static final REMOVE_UNTRUSTED_LIST:I = 0x3

.field public static final SBROWSER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field public static final TAG:Ljava/lang/String; = "CertificatePolicy"

.field public static final TRUSTED_POLICY_MASK:I = 0x1

.field public static final TRUST_LIST_TOKEN:Ljava/lang/String; = ","

.field public static final UNTRUSTED_POLICY_MASK:I = 0x2


# instance fields
.field public mBootCompleted:Z

.field public mBootReceiver:Landroid/content/BroadcastReceiver;

.field public final mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field public mCheckRevocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mLock:Ljava/lang/Object;

.field public mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public final mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

.field public mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field public mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field public mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field public mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootReceiver(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRollbackRefresh(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustedCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustedKeyStore(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUntrustedCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUntrustedKeyStore(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisplayAppSignature(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteRollbackRefresh(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageName(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPersonaManagerAdapter(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mloadCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitched(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserSwitched(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 255
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    .line 1364
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1379
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 263
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 264
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerReceivers()V

    const/4 p1, 0x0

    .line 266
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 p1, 0x1

    .line 267
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 p1, 0x2

    .line 268
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 p1, 0x3

    .line 269
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 270
    new-instance p1, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 271
    new-instance p1, Lcom/android/server/enterprise/certificate/CertificateCache;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 272
    new-instance p1, Lcom/android/server/enterprise/certificate/CertificateCache;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 273
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RollbackRefreshHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 275
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    .line 276
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 277
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 278
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    return-void
.end method

.method public static findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;
    .registers 11

    const-string v0, "findIssuerInAndroidKeystore "

    const-string v1, "CertificatePolicy"

    .line 1947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1949
    :try_start_9
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_12} :catch_ac
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_12} :catch_8f
    .catchall {:try_start_9 .. :try_end_12} :catchall_8d

    if-eqz p0, :cond_84

    .line 1951
    :try_start_14
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_18} :catch_82
    .catch Ljava/lang/AssertionError; {:try_start_14 .. :try_end_18} :catch_90
    .catchall {:try_start_14 .. :try_end_18} :catchall_c4

    if-eqz v5, :cond_84

    const/4 v6, 0x1

    :try_start_1b
    new-array v6, v6, [Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 1955
    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p1

    invoke-interface {v5, p1}, Landroid/security/IKeyChainService;->findIssuer([B)[B

    move-result-object p1

    if-eqz p1, :cond_84

    const-string v5, "X.509"

    .line 1957
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 1958
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1959
    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3b} :catch_6e
    .catch Ljava/security/cert/CertificateException; {:try_start_1b .. :try_end_3b} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3b} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_3b} :catch_82
    .catch Ljava/lang/AssertionError; {:try_start_1b .. :try_end_3b} :catch_90
    .catchall {:try_start_1b .. :try_end_3b} :catchall_c4

    if-eqz p1, :cond_44

    .line 1982
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1984
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_44
    move-object v4, p1

    goto :goto_84

    :catch_46
    move-exception p1

    .line 1972
    :try_start_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :catch_5a
    move-exception p1

    .line 1969
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :catch_6e
    move-exception p1

    .line 1966
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_81} :catch_82
    .catch Ljava/lang/AssertionError; {:try_start_47 .. :try_end_81} :catch_90
    .catchall {:try_start_47 .. :try_end_81} :catchall_c4

    goto :goto_84

    :catch_82
    move-exception p1

    goto :goto_ae

    :cond_84
    :goto_84
    if-eqz p0, :cond_89

    .line 1982
    :goto_86
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1984
    :cond_89
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c3

    :catchall_8d
    move-exception p1

    goto :goto_c6

    :catch_8f
    move-object p0, v4

    .line 1979
    :catch_90
    :try_start_90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findIssuerInAndroidKeystore - is KeyChainService running for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_89

    goto :goto_86

    :catch_ac
    move-exception p1

    move-object p0, v4

    .line 1977
    :goto_ae
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_90 .. :try_end_c0} :catchall_c4

    if-eqz p0, :cond_89

    goto :goto_86

    :goto_c3
    return-object v4

    :catchall_c4
    move-exception p1

    move-object v4, p0

    :goto_c6
    if-eqz v4, :cond_cb

    .line 1982
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1984
    :cond_cb
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1985
    throw p1
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_f

    .line 2268
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_10

    if-lez v1, :cond_f

    move-object v0, p0

    :cond_f
    :goto_f
    return-object v0

    :catch_10
    move-exception p0

    .line 2270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 2588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

    .line 2590
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2592
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2598
    :try_start_12
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 2600
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2601
    throw p0
.end method


# virtual methods
.method public addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 499
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 500
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_5e

    .line 503
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5e

    .line 507
    :cond_10
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v2, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 508
    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v3

    .line 509
    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v4

    .line 510
    invoke-static {p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 511
    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v6

    invoke-virtual {p0, v6, v5, p3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->installCertificates(Lcom/android/server/enterprise/certificate/EdmKeyStore;Ljava/util/List;II)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_2c

    return v1

    .line 515
    :cond_2c
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v7, 0x1

    if-ne v6, p2, :cond_39

    move p2, v7

    goto :goto_3a

    :cond_39
    move p2, v1

    :goto_3a
    and-int/2addr p2, v7

    .line 517
    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v6

    .line 516
    invoke-virtual {p0, p1, p3, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 518
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4a

    return v1

    .line 521
    :cond_4a
    invoke-virtual {v3, v0, p1, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    if-eqz p2, :cond_56

    .line 523
    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAuditMessageFormat()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v5, p1, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->auditLog(Ljava/util/List;ILjava/lang/String;)V

    .line 525
    :cond_56
    invoke-virtual {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAction()I

    move-result p3

    invoke-virtual {p0, p3, v4, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->updateKeystores(III)V

    return p2

    :cond_5e
    :goto_5e
    return v1
.end method

.method public final addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ","

    if-eqz v2, :cond_32

    .line 1007
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_32

    .line 1010
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_32
    :goto_32
    move-object v2, v4

    .line 1013
    :goto_33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_37
    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1014
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 1015
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1021
    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_78

    const/4 p2, 0x0

    .line 1022
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1025
    :cond_78
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, v3, p3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_81

    return-object v1

    .line 1028
    :cond_81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .registers 10

    .line 2022
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2024
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_84

    .line 2037
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2039
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2040
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v1

    .line 2041
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 2042
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2043
    invoke-virtual {v4}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string p0, "CertificatePolicy"

    const-string p1, "Operation not allowed, another rule for given package name has host set to wildcard"

    .line 2045
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2052
    :cond_51
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2053
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    .line 2052
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2057
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object p2

    .line 2058
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2059
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PermAppPrivateKey"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-lez p0, :cond_84

    const/4 p0, 0x1

    move v0, p0

    goto :goto_84

    :cond_83
    move v0, v1

    :cond_84
    :goto_84
    return v0
.end method

.method public addTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public addUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public allowUserRemoveCertificates(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 854
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string v3, "allowUserRemoveCertificate"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 857
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :cond_1f
    :goto_1f
    return p2
.end method

.method public final auditLog(Ljava/util/List;ILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 764
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 766
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_8

    .line 768
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_60

    const-string/jumbo v3, "null"

    if-eqz v2, :cond_28

    :try_start_1f
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v3

    .line 769
    :goto_29
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_37
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 771
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "CertificatePolicy"

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 772
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, p1, v9

    const/4 v9, 0x1

    aput-object v2, p1, v9

    const/4 v2, 0x2

    aput-object v3, p1, v2

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 773
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 770
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_60

    goto :goto_8

    .line 777
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_60
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    throw p0
.end method

.method public final checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    if-nez p1, :cond_b

    .line 1111
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1113
    :cond_b
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1114
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1115
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    return-object p1

    .line 1118
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final clearCertificates(II)Z
    .registers 8

    .line 656
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 657
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 658
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p2

    .line 660
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_15

    return v2

    .line 664
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3d

    .line 665
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3d

    .line 666
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v4

    invoke-virtual {v4, p2, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 670
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    return v2

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public final clearPermissionApplicationPrivateKey(I)Z
    .registers 15

    .line 2094
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2095
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "pkgName"

    const-string v2, "alias"

    const-string/jumbo v3, "storageName"

    .line 2097
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 2102
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PermAppPrivateKey"

    invoke-virtual {v5, v6, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2106
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2107
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2108
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2109
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, p0

    .line 2106
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_26

    .line 2114
    :cond_48
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_52

    const/4 p0, 0x1

    goto :goto_53

    :cond_52
    const/4 p0, 0x0

    :goto_53
    return p0
.end method

.method public clearPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 2088
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2089
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearPermissionApplicationPrivateKey(I)Z

    move-result p0

    return p0
.end method

.method public final clearTrustDB(ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CERTIFICATE"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-string p0, ","

    .line 680
    invoke-static {v0, p0}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v2
.end method

.method public clearTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 423
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    move-result p0

    return p0
.end method

.method public clearUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 453
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    move-result p0

    return p0
.end method

.method public final displayAppSignature(Ljava/lang/String;)V
    .registers 12

    const-string v0, "Name not found"

    const-string v1, "CertificatePolicy"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1210
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1213
    :try_start_c
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2240

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_19

    .line 1218
    :catch_15
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    :goto_19
    if-eqz v4, :cond_e7

    .line 1220
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lez v5, :cond_e7

    .line 1223
    :try_start_20
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_2b

    .line 1225
    :catch_27
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_2b
    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 1229
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v6, 0x1040d5e

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_46
    move-object v0, v2

    .line 1233
    :goto_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v4

    .line 1235
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "\n"

    if-eqz v6, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1236
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    aget-object v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_56

    const-string v7, " / "

    .line 1239
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 1243
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1244
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    .line 1245
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x1080078

    .line 1251
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7, v6, v1, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1252
    iget v1, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v7, Landroid/app/Notification;->flags:I

    .line 1253
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "package"

    .line 1254
    invoke-static {v6, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "appInfoPkgName"

    .line 1255
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1256
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1258
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4000000

    invoke-static {p1, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1260
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1, v0, v5, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1261
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getRandomInt()I

    move-result p0

    invoke-virtual {v4, p0, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_e7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 2535
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump CertificatePolicy"

    .line 2537
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2542
    :cond_10
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Trusted Cache]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2543
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Untrusted Cache]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2546
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Trusted Keystore]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2547
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[User Keystore]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2548
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Native Keystore]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2549
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Untrusted Keystore]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2552
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v0, "adminUid"

    const-string/jumbo v1, "pkgName"

    const-string/jumbo v2, "host"

    const-string/jumbo v3, "port"

    const-string v4, "alias"

    const-string/jumbo v5, "storageName"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "PermAppPrivateKey"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2561
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v0, "trustedCaList"

    const-string/jumbo v1, "untrustedCertsList"

    const-string/jumbo v2, "signatureIdentityInformationEnabled"

    const-string/jumbo v3, "notificateSignatureFailureToUser"

    const-string/jumbo v4, "validateCertificateAtInstall"

    const-string v5, "allowUserRemoveCertificate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "CERTIFICATE"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2570
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo p1, "systemDisabledList"

    const-string/jumbo p3, "systemPrevDisabledList"

    const-string/jumbo v0, "userRemovedList"

    const-string/jumbo v1, "nativeRemovedList"

    const-string/jumbo v2, "nativeRemovedList_wifi"

    filled-new-array {p1, p3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "generic"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public enableCertificateFailureNotification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 1277
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1278
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "CERTIFICATE"

    const-string/jumbo v1, "notificateSignatureFailureToUser"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public enableCertificateValidationAtInstall(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 1748
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1749
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1751
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CERTIFICATE"

    const-string/jumbo v2, "validateCertificateAtInstall"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1754
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string p2, "CERTIFICATE_VALIDATION"

    invoke-static {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1a
    return p1
.end method

.method public enableSignatureIdentityInformation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1087
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "CERTIFICATE"

    const-string/jumbo v1, "signatureIdentityInformationEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 331
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceNotifyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 321
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 371
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 371
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSystemUser()V
    .registers 2

    .line 380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_f

    return-void

    .line 381
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public final executeRollbackRefresh(II)V
    .registers 4

    .line 954
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 955
    iput p1, v0, Landroid/os/Message;->what:I

    .line 956
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 957
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final fromContentValues(Landroid/content/ContentValues;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_70

    .line 2291
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_70

    :try_start_9
    const-string v1, "adminUid"

    .line 2293
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "pkgName"

    .line 2294
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "host"

    .line 2295
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "port"

    .line 2296
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2b

    const/4 v2, -0x1

    .line 2298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2b
    const-string v3, "alias"

    .line 2300
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "storageName"

    .line 2301
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2302
    new-instance p1, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_42} :catch_59

    if-eqz v1, :cond_57

    .line 2306
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 2305
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->setAdminPkgName(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_54

    goto :goto_57

    :catch_54
    move-exception p0

    move-object v0, p1

    goto :goto_5a

    :cond_57
    :goto_57
    move-object v0, p1

    goto :goto_70

    :catch_59
    move-exception p0

    .line 2309
    :goto_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing ContentValues error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CertificatePolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    return-object v0
.end method

.method public generateAliases(Ljava/util/List;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 648
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 650
    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object p0
.end method

.method public final getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 1

    const-string p0, "application_policy"

    .line 1664
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public final getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1926
    :goto_9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1927
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v0

    .line 1931
    :cond_1e
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1938
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_2c
    const-string p0, "CertificatePolicy"

    const-string p1, "getCertificateChain error. Could not find certificate."

    .line 1933
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not build certificate chain; certificate not found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 574
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    .line 575
    invoke-virtual {v2, v4, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 579
    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 581
    new-instance v6, Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    invoke-direct {v6}, Lcom/samsung/android/knox/keystore/CertificateControlInfo;-><init>()V

    .line 582
    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 584
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/samsung/android/knox/keystore/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 589
    :cond_4c
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v4, ","

    .line 591
    invoke-static {v5, v4}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 592
    invoke-virtual {p3, v4, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 593
    iput-object v2, v6, Lcom/samsung/android/knox/keystore/CertificateControlInfo;->entries:Ljava/util/List;

    .line 595
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_66
    return-object v0
.end method

.method public final getCertificatesList(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 548
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p2

    .line 550
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result p2

    if-nez p2, :cond_15

    .line 551
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 553
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    .line 561
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    .line 560
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object p0

    .line 562
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_33
    return-object p2
.end method

.method public final getContainersForRollbackOrRefresh(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 747
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 748
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object p0

    .line 749
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_f

    :cond_1f
    return-object p1
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 299
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 301
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getGenericList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1064
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1068
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    .line 1069
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "CertificatePolicy"

    .line 1122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1123
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_7c

    .line 1125
    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1126
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_17
    const-string v2, "X509"

    .line 1130
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1d} :catch_77

    .line 1137
    :try_start_1d
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_23
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_23} :catch_71

    .line 1142
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1143
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v5

    .line 1148
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, ""

    if-nez v6, :cond_54

    .line 1149
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    move-object v7, v2

    move-object v2, v4

    goto :goto_63

    :cond_51
    move-object v2, v4

    move-object v7, v5

    goto :goto_63

    .line 1157
    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_63

    .line 1161
    :cond_5b
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v2

    :goto_63
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    const/4 v2, 0x1

    aput-object v7, v3, v2

    .line 1168
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_71
    const-string p2, "X509Certificate error"

    .line 1139
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_77
    const-string p2, "CertificateFactory error"

    .line 1132
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return-object p1
.end method

.method public getListPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .line 2120
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2121
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2122
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 1268
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1269
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 2

    .line 1078
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForPid(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1672
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1676
    :try_start_e
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_35

    .line 1678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    .line 1681
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1682
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1c

    .line 1683
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz p0, :cond_34

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_34
    return-object v0

    :catchall_35
    move-exception p0

    .line 1678
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    throw p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 1361
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z
    .registers 6

    const/4 v0, 0x0

    if-lez p3, :cond_23

    .line 914
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 916
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result p3

    .line 917
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1e

    if-eqz p3, :cond_27

    if-eqz p0, :cond_27

    :cond_1c
    :goto_1c
    move v0, p1

    goto :goto_27

    :cond_1e
    if-nez p3, :cond_1c

    if-eqz p0, :cond_27

    goto :goto_1c

    .line 926
    :cond_23
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    :cond_27
    :goto_27
    return v0
.end method

.method public final getStrictestValueAsUser(Ljava/lang/String;ZI)Z
    .registers 5

    .line 933
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "CERTIFICATE"

    .line 934
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 935
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, p2, :cond_c

    move p2, p1

    :cond_1f
    return p2
.end method

.method public getTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 416
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "CertificatePolicy"

    const-string v1, "UCM is not enabled"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    const/4 v0, 0x0

    .line 306
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 447
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final initCache(I)V
    .registers 11

    .line 788
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 789
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p1

    .line 790
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->clear()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v1, v2

    .line 794
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 796
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v2

    .line 797
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 798
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    .line 799
    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 800
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_41
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 803
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 806
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_5e

    goto :goto_41

    :cond_5e
    const-string v8, ","

    .line 809
    invoke-static {v7, v8}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 810
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v4, v6, v7}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    goto :goto_41

    :cond_6c
    return-void
.end method

.method public final installCertificates(Lcom/android/server/enterprise/certificate/EdmKeyStore;Ljava/util/List;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p3, p0, :cond_21

    .line 534
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 536
    invoke-static {p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result p3

    if-nez p3, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_21
    invoke-virtual {p1, p2, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "systemDisabledList"

    .line 461
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 463
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z
    .registers 5

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z

    move-result p0

    return p0
.end method

.method public isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z
    .registers 7

    .line 475
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 476
    invoke-virtual {v0, p4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 481
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 482
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSystem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    if-nez p3, :cond_27

    goto :goto_2e

    :cond_27
    const/4 p3, 0x3

    .line 487
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result p0

    and-int/2addr p0, v1

    goto :goto_34

    :cond_2e
    :goto_2e
    const/4 p3, 0x2

    .line 485
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result p0

    and-int/2addr p0, v1

    :goto_34
    if-eqz p2, :cond_3e

    if-nez p0, :cond_3e

    const p1, 0x10402b9

    .line 491
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_3e
    return p0
.end method

.method public isCertificateFailureNotificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1285
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const-string/jumbo v0, "notificateSignatureFailureToUser"

    const/4 v1, 0x0

    .line 1286
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public isCertificateTrustedUntrustedEnabledAsUser(I)Z
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1761
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1762
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isCertificateValidationAtInstallEnabledAsUser(I)Z
    .registers 4

    const-string/jumbo v0, "validateCertificateAtInstall"

    const/4 v1, 0x0

    .line 1766
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1717
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackagesForPid(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "com.android.certinstaller"

    .line 1720
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1721
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_25
    const/4 v1, 0x0

    .line 1726
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    if-eqz v0, :cond_4d

    if-eqz p0, :cond_4d

    .line 1731
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1732
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "*"

    .line 1733
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_4c
    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method public isPrivateKeyApplicationPermitted(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2127
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    .line 2128
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2134
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9d

    .line 2136
    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v1

    .line 2137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 2138
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 2140
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2142
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9b

    .line 2145
    :cond_44
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9b

    .line 2147
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 2148
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 2149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2153
    :cond_62
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2154
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 2157
    :cond_7c
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_89

    .line 2158
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    if-ne p3, v2, :cond_9b

    .line 2160
    :cond_89
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_9b
    :goto_9b
    if-eqz v0, :cond_f

    :cond_9d
    return-object v0
.end method

.method public isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1691
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackagesForPid(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "com.android.certinstaller"

    .line 1694
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1695
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_25
    const/4 v1, 0x0

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    if-eqz v0, :cond_4d

    if-eqz p0, :cond_4d

    .line 1705
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1706
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "*"

    .line 1707
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_4c
    const/4 v1, 0x1

    :cond_4d
    return v1
.end method

.method public isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    const-string p2, "com.android.packageinstaller"

    .line 1094
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1096
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1099
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string p2, "CERTIFICATE"

    const-string/jumbo v0, "signatureIdentityInformationEnabled"

    .line 1096
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1101
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method public final isSystem(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string/jumbo p0, "system:"

    .line 392
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 864
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .registers 4

    const-string v0, "allowUserRemoveCertificate"

    const/4 v1, 0x1

    .line 869
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public final loadCache()V
    .registers 2

    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    const/4 v0, 0x1

    .line 784
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    return-void
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1292
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1293
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 9

    .line 1300
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceNotifyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_1b

    .line 1304
    :catch_d
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "CertificatePolicy"

    const-string/jumbo v2, "notifyCertificateFailure"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :goto_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1312
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.CERTIFICATE_FAILURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1313
    aget-object v1, p1, v0

    const-string v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MODULE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1314
    aget-object v2, p1, v1

    const-string v3, "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MESSAGE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 1315
    invoke-virtual {p2, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    invoke-direct {v2, p0, p4, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;)V

    .line 1344
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string/jumbo p2, "notificateSignatureFailureToUser"

    .line 1347
    invoke-virtual {p0, p2, v0, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_82

    if-eqz p3, :cond_82

    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p3, 0x104044d

    new-array v2, v1, [Ljava/lang/Object;

    .line 1356
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, v0

    .line 1354
    invoke-virtual {p0, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_82
    return-void
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .registers 6

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceSystemUser()V

    .line 1991
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CERTIFICATE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

    .line 1992
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 1993
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending certificate removed intent to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " containing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (subject), "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (userId)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CertificatePolicy"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2010
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string p1, "CertificatePolicy/certificateRemoved"

    .line 2011
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .registers 3

    .line 2455
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->hasPendingActionForUser(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    .line 2456
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    const/4 v0, 0x2

    .line 2457
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    :cond_10
    return-void
.end method

.method public final obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16

    const-string v0, "CertificatePolicy"

    const-string/jumbo v1, "obtainMsgFromModule"

    .line 1437
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 1440
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v4, 0x10402aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "wifi_module"

    .line 1444
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "error converting reason to integer "

    const/16 v6, 0xd

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_95

    .line 1445
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v1, 0x1040f5f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v10

    const-string p1, " "

    .line 1448
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventReason "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    array-length p2, p1

    if-le p2, v4, :cond_1ad

    .line 1452
    aget-object p1, p1, v4

    .line 1453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reasonStr "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "reason="

    .line 1455
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1ad

    const/4 p2, 0x7

    .line 1457
    :try_start_75
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_7d} :catch_80

    :cond_7d
    :goto_7d
    move v1, p1

    goto/16 :goto_1ae

    :catch_80
    move-exception p1

    .line 1459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ad

    :cond_95
    const-string v3, "browser_module"

    .line 1464
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 1465
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v3, 0x104027a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v10

    if-eqz p2, :cond_1ad

    .line 1469
    :try_start_aa
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_ae} :catch_af

    goto :goto_c2

    :catch_af
    move-exception p1

    .line 1471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_c2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "errorCode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    if-eq v9, v4, :cond_1ab

    if-eq v9, v1, :cond_1ae

    if-eq v9, v8, :cond_1a9

    if-eq v9, v7, :cond_1a7

    if-eq v9, p1, :cond_7d

    if-eq v9, v6, :cond_1a5

    goto/16 :goto_1a3

    :cond_e5
    const-string/jumbo v3, "package_manager_module"

    .line 1498
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v11, 0xb

    const/16 v12, 0xa

    if-eqz v3, :cond_12a

    .line 1499
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v1, 0x10408a3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v10

    .line 1500
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1ad

    .line 1503
    :try_start_103
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_103 .. :try_end_107} :catch_108

    goto :goto_11b

    :catch_108
    move-exception p1

    .line 1505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11b
    packed-switch v9, :pswitch_data_366

    goto/16 :goto_1a3

    :cond_120
    :pswitch_120
    move v1, v12

    goto/16 :goto_1ae

    :pswitch_123
    const/16 p1, 0xc

    goto/16 :goto_7d

    :cond_127
    :pswitch_127
    move v1, v11

    goto/16 :goto_1ae

    :cond_12a
    const-string/jumbo v3, "installer_module"

    .line 1523
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 1524
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v3, 0x104061b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v10

    .line 1525
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1ad

    .line 1528
    :try_start_144
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_144 .. :try_end_148} :catch_149

    goto :goto_15c

    :catch_149
    move-exception p1

    .line 1530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15c
    const/16 p1, 0x8

    if-eq v9, v4, :cond_1ab

    if-eq v9, v1, :cond_1ae

    if-eq v9, v8, :cond_1a9

    if-eq v9, v7, :cond_1a7

    if-eq v9, p1, :cond_7d

    if-eq v9, v6, :cond_1a5

    if-eq v9, v12, :cond_120

    if-eq v9, v11, :cond_127

    goto :goto_1a3

    :cond_16f
    const-string v3, "Chrome_module"

    .line 1562
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ad

    const-string p1, "CHROME"

    aput-object p1, v2, v10

    .line 1564
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1ad

    .line 1567
    :try_start_181
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_185
    .catch Ljava/lang/NumberFormatException; {:try_start_181 .. :try_end_185} :catch_186

    goto :goto_199

    :catch_186
    move-exception p1

    .line 1569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_199
    if-eq v9, v4, :cond_1ab

    if-eq v9, v1, :cond_1ae

    if-eq v9, v8, :cond_1a9

    if-eq v9, v7, :cond_1a7

    if-eq v9, v6, :cond_1a5

    :goto_1a3
    move v1, v10

    goto :goto_1ae

    :cond_1a5
    move v1, v6

    goto :goto_1ae

    :cond_1a7
    move v1, v7

    goto :goto_1ae

    :cond_1a9
    move v1, v8

    goto :goto_1ae

    :cond_1ab
    move v1, v4

    goto :goto_1ae

    :cond_1ad
    :goto_1ad
    move v1, v9

    .line 1593
    :cond_1ae
    :goto_1ae
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "reason "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_370

    .line 1649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b7

    .line 1650
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1644
    :pswitch_1e4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1636
    :pswitch_202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1640
    :pswitch_220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402af

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1632
    :pswitch_23e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1628
    :pswitch_25c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402ab

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1604
    :pswitch_27a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b4

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1620
    :pswitch_298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402ad

    .line 1621
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1624
    :pswitch_2b6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402ac

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto/16 :goto_364

    .line 1600
    :pswitch_2d4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b5

    .line 1601
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto :goto_364

    .line 1616
    :pswitch_2f1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402ae

    .line 1617
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto :goto_364

    .line 1612
    :pswitch_30e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b2

    .line 1613
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto :goto_364

    .line 1608
    :pswitch_32b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b3

    .line 1609
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    goto :goto_364

    .line 1596
    :pswitch_348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const p2, 0x10402b8

    .line 1597
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    :goto_364
    return-object v2

    nop

    :pswitch_data_366
    .packed-switch -0x69
        :pswitch_127
        :pswitch_123
        :pswitch_120
    .end packed-switch

    :pswitch_data_370
    .packed-switch 0x1
        :pswitch_348
        :pswitch_32b
        :pswitch_30e
        :pswitch_2f1
        :pswitch_2d4
        :pswitch_2b6
        :pswitch_298
        :pswitch_27a
        :pswitch_25c
        :pswitch_23e
        :pswitch_220
        :pswitch_202
        :pswitch_1e4
    .end packed-switch
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 2379
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 2380
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4

    const-string v0, "CertificatePolicy"

    const-string/jumbo v1, "onPreAdminRemoval..."

    .line 2443
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 2444
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    const/4 v0, 0x3

    .line 2445
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 4

    .line 1410
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)Ljava/util/List;

    .line 1412
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)Ljava/util/List;

    .line 1413
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->hasPendingActionForUser(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x4

    .line 1414
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 1416
    :cond_19
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    .line 1417
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    .line 1418
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final onUserSwitched(I)V
    .registers 4

    .line 1422
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1429
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->isGuestUser(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1430
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x4

    .line 1431
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    const/4 v0, 0x2

    .line 1432
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    :cond_1c
    return-void
.end method

.method public final performGenericTableUpgrade()V
    .registers 9

    .line 2418
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "userRemovedList"

    .line 2419
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 2420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_64

    .line 2422
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "_"

    .line 2423
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_60

    const/4 v7, 0x0

    .line 2425
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2426
    invoke-static {v7}, Lcom/android/server/enterprise/utils/Utils;->isInteger(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    if-le v7, v6, :cond_5c

    .line 2427
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2429
    :cond_5c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2432
    :cond_60
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2436
    :cond_64
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    goto :goto_a

    :cond_68
    return-void
.end method

.method public final performKeystoreUpgrade()V
    .registers 2

    .line 2406
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2407
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2408
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2409
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    return-void
.end method

.method public performUpgrade()V
    .registers 4

    .line 2390
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "cert_migration"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ok"

    if-eqz v0, :cond_14

    .line 2391
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 2394
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->performKeystoreUpgrade()V

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->performGenericTableUpgrade()V

    .line 2396
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1073
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, ","

    invoke-static {p2, v0}, Lcom/android/server/enterprise/utils/Utils;->convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final registerPackageChangeReceiver()V
    .registers 3

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2a

    .line 1177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 1178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1180
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1200
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "CertificatePolicy"

    const-string/jumbo v0, "registerPackageChangeReceiver() : Done"

    .line 1201
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 1204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final registerReceivers()V
    .registers 4

    .line 282
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public reloadCacheForNewContainer()V
    .registers 3

    const-string v0, "CertificatePolicy"

    const-string v1, "Reloading cache for new container"

    .line 2462
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    return-void
.end method

.method public final removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 626
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 630
    :cond_8
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 631
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v1

    .line 632
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAuditMessageFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p4, p2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->auditLog(Ljava/util/List;ILjava/lang/String;)V

    .line 633
    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeFromCache(IILjava/util/List;)V

    .line 634
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 635
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_23
    :goto_23
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 638
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->isAliasPresent(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 639
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 642
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p3

    invoke-virtual {p3, p4, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 643
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAction()I

    move-result p1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->updateKeystores(III)V

    const/4 p0, 0x1

    return p0
.end method

.method public removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 603
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    if-eqz p2, :cond_4b

    .line 605
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4b

    .line 609
    :cond_c
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v1, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 610
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->generateAliases(Ljava/util/List;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object p3

    .line 612
    invoke-virtual {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 613
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 614
    :goto_26
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_42

    .line 615
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 616
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 619
    :cond_42
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 620
    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_4b
    :goto_4b
    return v0
.end method

.method public final removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    const-string v4, ","

    .line 1039
    invoke-static {v2, v4}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1041
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1042
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1044
    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 1045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1047
    :cond_48
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_4c
    const/4 p2, 0x0

    .line 1052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_60

    const/4 p2, 0x0

    .line 1053
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1055
    :cond_60
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, v3, p3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6e

    .line 1057
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_6e
    return-object v1
.end method

.method public removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .registers 10

    .line 2067
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2069
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3e

    .line 2073
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2074
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2075
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PermAppPrivateKey"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    if-eqz v0, :cond_3e

    .line 2080
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2081
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 2080
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    and-int/2addr v0, p0

    :cond_3e
    return v0
.end method

.method public removeTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x2

    .line 410
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public removeUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x3

    .line 440
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final retrieveAppPermissionsFromDb(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .line 2222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "adminUid"

    const-string/jumbo v2, "pkgName"

    const-string/jumbo v3, "host"

    const-string/jumbo v4, "port"

    const-string v5, "alias"

    const-string/jumbo v6, "storageName"

    .line 2225
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 2235
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 2237
    invoke-static {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "#SelectClause#"

    .line 2236
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PermAppPrivateKey"

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    .line 2242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2243
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->fromContentValues(Landroid/content/ContentValues;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 2245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4a
    return-object v0
.end method

.method public sendIntentToSettings(I)V
    .registers 3

    .line 950
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-boolean p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    return-void
.end method

.method public final setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 12

    .line 2318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2320
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_8d

    .line 2322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    if-nez v2, :cond_19

    if-eqz p5, :cond_18

    return v3

    :cond_18
    return v0

    .line 2334
    :cond_19
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2338
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_2a} :catch_89
    .catch Ljava/lang/AssertionError; {:try_start_1f .. :try_end_2a} :catch_65
    .catchall {:try_start_1f .. :try_end_2a} :catchall_63

    .line 2345
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_58

    if-eqz p4, :cond_46

    .line 2351
    :try_start_31
    new-instance p2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {p2, p4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p3

    .line 2355
    :cond_46
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p2

    invoke-interface {p2, v1, p3, p5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_4d} :catch_54
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4f

    move v3, v0

    goto :goto_58

    :catchall_4f
    move-exception p1

    .line 2362
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2364
    throw p1

    .line 2362
    :catch_54
    :goto_54
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_5b

    :cond_58
    :goto_58
    if-eqz p0, :cond_5b

    goto :goto_54

    :cond_5b
    :goto_5b
    if-eqz v3, :cond_62

    const-string p0, "com.sec.android.app.sbrowser"

    .line 2366
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_62
    return v3

    :catchall_63
    move-exception p0

    goto :goto_85

    :catch_65
    :try_start_65
    const-string p0, "CertificatePolicy"

    .line 2342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPrivateKeyGrant - is KeyChainService running for user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_65 .. :try_end_81} :catchall_63

    .line 2345
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_85
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2346
    throw p0

    .line 2345
    :catch_89
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_8d
    move-exception p0

    .line 2322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2323
    throw p0
.end method

.method public systemReady()V
    .registers 1

    .line 2385
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->performUpgrade()V

    return-void
.end method

.method public final toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;
    .registers 4

    .line 2276
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 2277
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "host"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "port"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2280
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alias"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2283
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "storageName"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-object p0
.end method

.method public final triggerContainerOperation(IIII)V
    .registers 5

    if-nez p1, :cond_1e

    .line 734
    invoke-virtual {p0, p2, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getContainersForRollbackOrRefresh(II)Ljava/util/List;

    move-result-object p1

    .line 735
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 736
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public updateKeystores(III)V
    .registers 8

    .line 687
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_26

    if-eq p1, v2, :cond_22

    const/4 v3, 0x2

    if-eq p1, v3, :cond_15

    const/4 p2, 0x3

    if-eq p1, p2, :cond_11

    goto :goto_32

    .line 717
    :cond_11
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_32

    :cond_15
    if-nez p2, :cond_1b

    .line 705
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_32

    .line 707
    :cond_1b
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 710
    invoke-virtual {p0, v0, p3, v1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->triggerContainerOperation(IIII)V

    goto :goto_32

    .line 714
    :cond_22
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_32

    :cond_26
    if-nez p2, :cond_2c

    .line 692
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_32

    .line 694
    :cond_2c
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 700
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->triggerContainerOperation(IIII)V

    :goto_32
    return-void
.end method

.method public final validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", userId : "

    const-string v2, ", packageName : "

    const-string v3, "CertificatePolicy"

    const/4 v4, 0x0

    if-eqz v0, :cond_2f

    .line 2179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " validateAlias called. storage name : null or empty, alias : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p2

    goto :goto_5e

    .line 2183
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " validateAlias called. storage name : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", alias : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1, p4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-object p0, v4

    :goto_5e
    if-nez p5, :cond_64

    .line 2211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p5

    .line 2215
    :cond_64
    invoke-interface {p5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    return-object p0

    :cond_6b
    return-object v4
.end method

.method public validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I
    .registers 3

    const/4 v0, 0x0

    .line 1774
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1775
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result p0

    return p0
.end method

.method public validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I
    .registers 5

    .line 1779
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1780
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    move-result p0

    return p0
.end method

.method public final varargs validateCerts(I[Ljava/security/cert/X509Certificate;)I
    .registers 9

    const-string v0, "Should not happen!"

    const-string v1, "CertificatePolicy"

    .line 1813
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    .line 1818
    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 1821
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 1822
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v3

    goto :goto_23

    .line 1825
    :cond_20
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1830
    :goto_23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_37

    .line 1833
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1834
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    goto :goto_49

    .line 1838
    :cond_37
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1839
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 1841
    :goto_49
    new-instance p1, Ljava/security/cert/TrustAnchor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 1842
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "X.509"

    .line 1845
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 1846
    invoke-virtual {p1, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1
    :try_end_5d
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_5d} :catch_16e
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_5d} :catch_158

    .line 1858
    :try_start_5d
    new-instance p2, Ljava/security/cert/PKIXParameters;

    invoke-direct {p2, p0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_62
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5d .. :try_end_62} :catch_144

    :try_start_62
    const-string p0, "PKIX"

    .line 1867
    invoke-static {p0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p0
    :try_end_68
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_62 .. :try_end_68} :catch_130

    .line 1874
    invoke-virtual {p2, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1879
    :try_start_6b
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    const-string p0, "Validation success"

    .line 1881
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6b .. :try_end_73} :catch_11c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6b .. :try_end_73} :catch_76

    const/4 v2, -0x1

    goto/16 :goto_12f

    :catch_76
    move-exception p0

    .line 1887
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Validation failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Additional certificate path checker failed."

    .line 1889
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 1891
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_a7

    .line 1892
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 1893
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_a7
    const-string/jumbo p2, "is revoked"

    .line 1896
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11a

    const-string p2, "Certificate revocation after"

    .line 1897
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b9

    goto :goto_11a

    :cond_b9
    const-string p2, "OCSP check failed!"

    .line 1899
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_117

    const-string p2, "Certificate status could not be determined."

    .line 1900
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_117

    const-string p2, "CRL distribution point extension could not be read"

    .line 1901
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_117

    const-string p2, "No additional CRL locations could be decoded from CRL distribution point extension."

    .line 1902
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_117

    const-string p2, "Distribution points could not be read."

    .line 1903
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_117

    const-string p2, "No valid CRL found."

    .line 1904
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_117

    const-string p2, "Unable to get CRL for certificate"

    .line 1905
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f2

    goto :goto_117

    :cond_f2
    const-string p2, ", expiration time"

    .line 1907
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_115

    .line 1908
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateExpiredException;

    if-eqz p2, :cond_103

    goto :goto_115

    :cond_103
    const-string p2, ", validation time"

    .line 1910
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_113

    .line 1911
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz p0, :cond_12f

    :cond_113
    const/4 v2, 0x3

    goto :goto_12f

    :cond_115
    :goto_115
    const/4 v2, 0x4

    goto :goto_12f

    :cond_117
    :goto_117
    const/16 v2, 0xd

    goto :goto_12f

    :cond_11a
    :goto_11a
    const/4 v2, 0x2

    goto :goto_12f

    :catch_11c
    move-exception p0

    .line 1884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    :goto_12f
    return v2

    :catch_130
    move-exception p0

    .line 1869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_144
    move-exception p0

    .line 1860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_158
    move-exception p0

    .line 1851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "If FIPS mode is turned on, cannot use MD5 algorithm : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_16e
    move-exception p0

    .line 1848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure generating cert path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    return p0
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1788
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1789
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public validateChainAtInstallAsUser(Ljava/util/List;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)I"
        }
    .end annotation

    .line 1796
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 1797
    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1798
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_51

    .line 1803
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1804
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 1805
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1807
    :cond_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    move-result v0

    :cond_51
    return v0
.end method

.method public final validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
    .registers 8

    if-eqz p1, :cond_33

    .line 2254
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2255
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2256
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2257
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    move-result v3

    .line 2258
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_33

    if-eqz v2, :cond_33

    if-eqz v4, :cond_33

    .line 2260
    new-instance p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z
    .registers 12

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 834
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 835
    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 837
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    const/4 v7, -0x1

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v0

    and-int/2addr v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    if-eqz v0, :cond_3a

    const/4 v2, 0x2

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_3a

    .line 840
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 841
    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result p2

    if-eqz p2, :cond_3a

    .line 843
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    const/4 v7, -0x1

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result p0

    xor-int/2addr p0, v1

    and-int/2addr v0, p0

    :cond_3a
    return v0
.end method
