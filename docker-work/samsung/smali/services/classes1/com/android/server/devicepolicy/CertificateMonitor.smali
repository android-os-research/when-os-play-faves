.class public Lcom/android/server/devicepolicy/CertificateMonitor;
.super Ljava/lang/Object;
.source "CertificateMonitor.java"


# static fields
.field public static final MONITORING_CERT_NOTIFICATION_ID:I = 0x21


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mRootCaReceiver:Landroid/content/BroadcastReceiver;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$oZYA-wXM7SPw7HK0ccLcTQJ53AA(Lcom/android/server/devicepolicy/CertificateMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->lambda$onCertificateApprovalsChanged$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInstalledCertificates(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Landroid/os/Handler;)V
    .registers 10

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v1, Lcom/android/server/devicepolicy/CertificateMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 69
    iput-object p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 70
    iput-object p3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.USER_STARTED"

    .line 75
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.USER_UNLOCKED"

    .line 76
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.security.action.TRUST_STORE_CHANGED"

    .line 77
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 p0, 0x3e8

    .line 78
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    iget-object v0, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onCertificateApprovalsChanged$0(I)V
    .registers 2

    .line 131
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    .line 250
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method


# virtual methods
.method public final buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_8} :catch_e4

    .line 195
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 199
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 201
    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    const v5, 0x1080aa3

    const v6, 0x1040d99

    if-eqz v4, :cond_42

    new-array v0, v0, [Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 203
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 202
    invoke-virtual {v10, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    move-result v3

    :goto_40
    move v11, v5

    goto :goto_68

    .line 206
    :cond_42
    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v4, v7, :cond_5d

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 208
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 207
    invoke-virtual {v10, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_5d
    const v0, 0x1040d98

    .line 211
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x108008a

    goto :goto_40

    .line 216
    :goto_68
    new-instance v6, Landroid/content/Intent;

    const-string v4, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v4, 0x10008000

    .line 217
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.settings.extra.number_of_certificates"

    .line 218
    invoke-virtual {v6, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v6, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 223
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v4, 0x100000

    .line 222
    invoke-virtual {v6, p1, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 225
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    :cond_98
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const/4 v5, 0x0

    const/high16 v7, 0xc000000

    const/4 v8, 0x0

    .line 231
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    move-object v3, p0

    move-object v4, v2

    .line 229
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 233
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 234
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "count"

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance p2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const v2, 0x1040d9a

    .line 238
    invoke-static {v10, p1, v2}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 243
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 244
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const p1, 0x106001c

    .line 245
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :catch_e4
    move-exception p0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "DevicePolicyManager"

    const-string v0, "Create context as %s failed"

    .line 191
    invoke-static {p1, p0, v0, p2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_6} :catch_29
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_6} :catch_22

    .line 121
    :try_start_6
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p1

    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 122
    :try_start_12
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_29
    .catch Ljava/lang/AssertionError; {:try_start_12 .. :try_end_15} :catch_22

    return-object p1

    :catchall_16
    move-exception p1

    if-eqz p0, :cond_21

    .line 120
    :try_start_19
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p0

    :try_start_1e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw p1
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_22} :catch_29
    .catch Ljava/lang/AssertionError; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_29
    move-exception p0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public installCaCert(Landroid/os/UserHandle;[B)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "installCaCertsToKeyChain(): "

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x0

    .line 87
    :try_start_6
    invoke-static {p2}, Lcom/android/server/devicepolicy/CertificateMonitor;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object p2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 88
    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object p2
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_14} :catch_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_43

    .line 94
    :try_start_14
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1a} :catch_32

    .line 95
    :try_start_1a
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 96
    :try_start_22
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_32

    return-object p1

    :catchall_26
    move-exception p1

    if-eqz p0, :cond_31

    .line 94
    :try_start_29
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception p0

    :try_start_2e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_32} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 99
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 97
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    return-object v2

    :catch_43
    move-exception p0

    const-string p1, "Problem converting cert"

    .line 90
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public onCertificateApprovalsChanged(I)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninstallCaCerts(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "DevicePolicyManager"

    .line 106
    :try_start_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_38
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_2a

    const/4 p1, 0x0

    .line 107
    :goto_9
    :try_start_9
    array-length v1, p2

    if-ge p1, v1, :cond_18

    .line 108
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    aget-object v2, p2, p1

    invoke-interface {v1, v2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1e

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_18
    if-eqz p0, :cond_3e

    .line 110
    :try_start_1a
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_38
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_2a

    goto :goto_3e

    :catchall_1e
    move-exception p1

    if-eqz p0, :cond_29

    .line 106
    :try_start_21
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p0

    :try_start_26
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw p1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2a} :catch_38
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    const-string p1, "CaCertUninstaller: "

    .line 113
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string p1, "from CaCertUninstaller: "

    .line 111
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final updateInstalledCertificates(Landroid/os/UserHandle;)V
    .registers 6

    const-string v0, "DevicePolicyManager"

    .line 146
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 153
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_17} :catch_5f

    .line 159
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->onInstalledCertificatesChanged(Landroid/os/UserHandle;Ljava/util/Collection;)V

    const/16 v2, 0x21

    .line 163
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getLicenseService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 164
    invoke-interface {v3}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 165
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_35} :catch_36

    return-void

    .line 175
    :catch_36
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAcceptedCaCertificates(Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v1, :cond_55

    .line 177
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;

    move-result-object v1

    .line 178
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_5e

    .line 181
    :cond_55
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_5e
    return-void

    :catch_5f
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "Could not retrieve certificates from KeyChain service for user %d"

    .line 155
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
