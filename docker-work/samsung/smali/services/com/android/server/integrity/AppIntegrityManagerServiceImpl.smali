.class public Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
.super Landroid/content/integrity/IAppIntegrityManager$Stub;
.source "AppIntegrityManagerServiceImpl.java"


# static fields
.field public static final ADB_INSTALLER:Ljava/lang/String; = "adb"

.field public static final ALLOWED_INSTALLERS_METADATA_NAME:Ljava/lang/String; = "allowed-installers"

.field public static final ALLOWED_INSTALLER_DELIMITER:Ljava/lang/String; = ","

.field public static final BASE_APK_FILE:Ljava/lang/String; = "base.apk"

.field public static final DEBUG_INTEGRITY_COMPONENT:Z = false

.field public static final INSTALLER_PACKAGE_CERT_DELIMITER:Ljava/lang/String; = "\\|"

.field public static final PACKAGE_INSTALLER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final TAG:Ljava/lang/String; = "AppIntegrityManagerServiceImpl"

.field public static final UNKNOWN_INSTALLER:Ljava/lang/String; = ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qEeMLWxAUapTLan209G5Rj7JRAs(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->lambda$updateRuleSet$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qKaCsO8ZZXT7D0UVcF8QpePqSxY(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->lambda$extractSourceStamp$1(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleIntegrityVerification(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->handleIntegrityVerification(Landroid/content/Intent;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 125
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/integrity/engine/RuleEvaluationEngine;",
            "Lcom/android/server/integrity/IntegrityFileManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 162
    iput-object p3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    .line 163
    iput-object p4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 164
    iput-object p5, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 165
    iput-object p6, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    .line 168
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_19
    const-string p3, "application/vnd.android.package-archive"

    .line 170
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_19 .. :try_end_1e} :catch_28

    .line 175
    new-instance p3, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    invoke-direct {p3, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p3, p2, p0, p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_28
    move-exception p0

    .line 172
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Mime type malformed: should never happen."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .registers 10

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppIntegrityManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 145
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 147
    invoke-static {}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    move-result-object v6

    .line 148
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v7

    .line 149
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V

    return-object v1
.end method

.method public static getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 3

    .line 587
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_9
    const-string p0, "X509"

    .line 591
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_f} :catch_49

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    .line 598
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_23

    :catch_1a
    move-exception p0

    .line 601
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error getting X509Certificate"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_23
    :goto_23
    if-eqz v1, :cond_41

    :try_start_25
    const-string p0, "SHA-256"

    .line 609
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 610
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 611
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_25 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    .line 613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error error computing fingerprint"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 605
    :cond_41
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "X509 Certificate not found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_49
    move-exception p0

    .line 593
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error getting CertificateFactory"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getSignatureLineage(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 6

    .line 556
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_37

    .line 563
    invoke-static {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object p0

    .line 566
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 567
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 570
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    move v3, v2

    .line 573
    :goto_1f
    array-length v4, p0

    if-ge v3, v4, :cond_29

    .line 574
    aget-object v4, p0, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 576
    :cond_29
    :goto_29
    array-length p0, v0

    if-ge v2, p0, :cond_35

    .line 577
    aget-object p0, v0, v2

    aput-object p0, v1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_35
    move-object p0, v1

    :cond_36
    return-object p0

    .line 558
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package signature not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 4

    .line 544
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_11

    .line 546
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    .line 551
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0

    .line 547
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package signature not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$extractSourceStamp$1(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 1

    .line 513
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateRuleSet$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .registers 14

    const-string v0, "AppIntegrityManagerServiceImpl"

    const/4 v1, 0x1

    .line 204
    :try_start_3
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/integrity/IntegrityFileManager;->writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_e

    move p3, v1

    goto :goto_15

    :catch_e
    move-exception p3

    const-string v2, "Error writing rules."

    .line 206
    invoke-static {v0, v2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x0

    :goto_15
    const/16 v2, 0xf8

    .line 218
    invoke-static {v2, p3, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    xor-int/lit8 p1, p3, 0x1

    const-string p2, "android.content.integrity.extra.STATUS"

    .line 225
    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :try_start_26
    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p0

    const-string p1, "Error sending status feedback."

    .line 234
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method


# virtual methods
.method public final extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .registers 4

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_8c

    .line 509
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 510
    :try_start_c
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_3b

    .line 511
    :try_start_14
    new-instance p1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 513
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 514
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 515
    invoke-static {p1}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2f

    .line 516
    :try_start_2b
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_3b

    goto :goto_4b

    :catchall_2f
    move-exception p1

    if-eqz p0, :cond_3a

    .line 510
    :try_start_32
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p0

    :try_start_37
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_3b

    .line 517
    :catch_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not read APK directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 521
    :cond_43
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object p1

    .line 524
    :goto_4b
    invoke-virtual {p1}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 525
    invoke-virtual {p1}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 527
    invoke-virtual {p1}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 528
    invoke-virtual {p1}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 530
    invoke-virtual {p1}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    :try_start_6c
    const-string p1, "SHA-256"

    .line 533
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 534
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 535
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/integrity/AppInstallMetadata$Builder;->setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    :try_end_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6c .. :try_end_81} :catch_82
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6c .. :try_end_81} :catch_82

    goto :goto_8b

    :catch_82
    move-exception p0

    .line 537
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Error computing source stamp certificate digest"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8b
    :goto_8b
    return-void

    .line 505
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Installation path is null, package not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 476
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_4a

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_4a

    const-string v1, "allowed-installers"

    .line 478
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    const-string v1, ","

    .line 481
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 482
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    if-ge v3, v1, :cond_4a

    aget-object v4, p1, v3

    const-string v5, "\\|"

    .line 484
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 485
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_39

    .line 486
    aget-object v5, v4, v2

    invoke-virtual {p0, v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    aget-object v4, v4, v7

    .line 488
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 489
    :cond_39
    array-length v5, v4

    if-ne v5, v7, :cond_47

    .line 490
    aget-object v4, v4, v2

    .line 491
    invoke-virtual {p0, v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 490
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_4a
    return-object v0
.end method

.method public final getAllowedRuleProviderSystemApps()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700e2

    .line 765
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 769
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 770
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 771
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_30
    return-object v1
.end method

.method public final getCallerPackageNameOrThrow(I)Ljava/lang/String;
    .registers 2

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallingRulePusherPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 720
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system packages specified in config_integrityRuleProviderPackages are allowed to call this method."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCallingRulePusherPackageName(I)Ljava/lang/String;
    .registers 5

    .line 729
    invoke-virtual {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    .line 738
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object p0

    .line 742
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 743
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 744
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 745
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 749
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    goto :goto_36

    :cond_2f
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_36
    return-object p0
.end method

.method public final getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 460
    invoke-static {v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-object p0
.end method

.method public final getCertificateLineage(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatureLineage(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 468
    invoke-static {v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-object p0
.end method

.method public getCurrentRuleSetProvider()Ljava/lang/String;
    .registers 2

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 255
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 256
    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 257
    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :cond_1a
    const-string p0, ""

    :goto_1c
    return-object p0
.end method

.method public getCurrentRuleSetVersion()Ljava/lang/String;
    .registers 2

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 244
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 245
    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 246
    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :cond_1a
    const-string p0, ""

    :goto_1c
    return-object p0
.end method

.method public getCurrentRules()Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 265
    :try_start_4
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string v1, "AppIntegrityManagerServiceImpl"

    const-string v2, "Error getting current rules"

    .line 267
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :goto_14
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final getInstallationPath(Landroid/net/Uri;)Ljava/io/File;
    .registers 4

    if-eqz p1, :cond_69

    .line 702
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    .line 703
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 707
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 711
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p0

    .line 712
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot read file for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 709
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find file for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 704
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported scheme for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 699
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null data uri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    const-string v0, "adb"

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_42

    .line 447
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 449
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_21} :catch_22

    return-object p0

    .line 452
    :catch_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Installer package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIntegrityManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 444
    :cond_42
    :goto_42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 7

    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p0, "adb"

    return-object p0

    :cond_b
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    const/4 v2, -0x1

    .line 387
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v4, ""

    if-gez v1, :cond_35

    .line 389
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Installer cannot be determined: installer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " installer UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 400
    :cond_35
    invoke-virtual {p0, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return-object v4

    .line 409
    :cond_40
    sget-object v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string v0, "android.intent.extra.ORIGINATING_UID"

    .line 410
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_56

    const-string p0, "Installer is package installer but originating UID not found."

    .line 412
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 415
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object p0

    .line 416
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No package found associated with originating UID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_75
    const/4 p1, 0x0

    .line 421
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7d
    return-object v0
.end method

.method public final getMultiApkInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .registers 11

    const-string v0, "AppIntegrityManagerServiceImpl"

    .line 654
    new-instance v1, Ljava/io/File;

    const-string v2, "base.apk"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 656
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 658
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const v3, 0x8000080

    .line 657
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 663
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v2, :cond_6b

    aget-object v5, p1, v4

    .line 664
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_68

    .line 671
    :cond_2d
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 672
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 674
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 673
    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_51

    :catch_3c
    move-exception v6

    .line 680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    if-eqz v1, :cond_68

    .line 683
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Found package info from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_6b
    :goto_6b
    if-eqz v1, :cond_6e

    return-object v1

    .line 690
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Base package info cannot be found from installation directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;
    .registers 19

    const-string v1, "AppIntegrityManagerServiceImpl"

    .line 618
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7f

    const/4 v2, 0x0

    move-object/from16 v3, p0

    .line 623
    :try_start_b
    iget-object v3, v3, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_67

    const/4 v4, 0x0

    .line 624
    :try_start_14
    invoke-virtual {v3, v0, v4, v4}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v5

    const v0, 0x8000080

    .line 628
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v4

    const/4 v6, 0x1

    .line 629
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 631
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 632
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_59

    .line 646
    :try_start_35
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_67

    return-object v2

    .line 635
    :cond_39
    :try_start_39
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    invoke-interface {v5, v4}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    const/4 v6, 0x0

    int-to-long v7, v0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 636
    sget-object v14, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 644
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    const/16 v16, 0x0

    .line 636
    invoke-static/range {v5 .. v16}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_59

    .line 646
    :try_start_55
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_67

    return-object v0

    :catchall_59
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_66

    .line 623
    :try_start_5d
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_66

    :catchall_61
    move-exception v0

    move-object v3, v0

    :try_start_63
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_67

    :catch_67
    move-exception v0

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 620
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Installation path is null, package not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPackageListForUid(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 798
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "No packages were found for uid: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIntegrityManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_9

    return-object p1

    :cond_9
    :try_start_9
    const-string p0, "SHA-256"

    .line 434
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 435
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 436
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 438
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SHA-256 algorithm not found"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getWhitelistedRuleProviders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final handleIntegrityVerification(Landroid/content/Intent;)V
    .registers 16

    const-string v0, "AppIntegrityManagerServiceImpl"

    const-string v1, "android.content.pm.extra.VERIFICATION_ID"

    const/4 v2, -0x1

    .line 278
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 286
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 289
    invoke-virtual {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->integrityCheckIncludesRuleProvider()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isRuleProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 293
    iget-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    return-void

    :cond_21
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    .line 298
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse package "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    return-void

    .line 309
    :cond_4b
    invoke-virtual {p0, v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v6

    .line 310
    invoke-virtual {p0, v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateLineage(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v7

    .line 312
    invoke-virtual {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 314
    new-instance v10, Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v10}, Landroid/content/integrity/AppInstallMetadata$Builder;-><init>()V

    .line 316
    invoke-virtual {p0, v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/integrity/AppInstallMetadata$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 317
    invoke-virtual {v10, v6}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 318
    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificateLineage(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    const-string v7, "android.intent.extra.LONG_VERSION_CODE"

    const-wide/16 v11, -0x1

    .line 319
    invoke-virtual {p1, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/content/integrity/AppInstallMetadata$Builder;->setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 320
    invoke-virtual {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 321
    invoke-virtual {v10, v8}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 322
    invoke-virtual {p0, v5}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 323
    invoke-virtual {p0, v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 324
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v10}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V

    .line 326
    invoke-virtual {v10}, Landroid/content/integrity/AppInstallMetadata$Builder;->build()Landroid/content/integrity/AppInstallMetadata;

    move-result-object p1

    .line 336
    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v13

    .line 337
    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a8

    goto :goto_c3

    :cond_a8
    const-string v4, "Integrity check of %s result: %s due to %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    .line 342
    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v10

    aput-object v10, v7, v8

    .line 340
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c3
    const/16 v4, 0xf7

    .line 348
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide v7

    .line 351
    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getLoggingResponse()I

    move-result v10

    .line 352
    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByAppCertRule()Z

    move-result v11

    .line 353
    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByInstallerRule()Z

    move-result v12

    .line 345
    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V

    .line 354
    iget-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 356
    invoke-virtual {v13}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v4

    sget-object v5, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v4, v5, :cond_e8

    move v4, v3

    goto :goto_e9

    :cond_e8
    move v4, v2

    .line 354
    :goto_e9
    invoke-virtual {p1, v1, v4}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_ec} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_ec} :catch_ed

    goto :goto_104

    :catch_ed
    move-exception p1

    const-string v2, "Error handling integrity verification"

    .line 368
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    goto :goto_104

    :catch_f9
    move-exception p1

    const-string v3, "Invalid input to integrity verification"

    .line 362
    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    :goto_104
    return-void
.end method

.method public final integrityCheckIncludesRuleProvider()Z
    .registers 3

    .line 789
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "verify_integrity_for_rule_provider"

    const/4 v1, 0x0

    .line 789
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    move v1, v0

    :cond_12
    return v1
.end method

.method public final isRuleProvider(Ljava/lang/String;)Z
    .registers 3

    .line 753
    invoke-virtual {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 754
    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemApp(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 779
    :try_start_1
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 780
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 781
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_16

    .line 782
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_16

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :catch_16
    :cond_16
    return v0
.end method

.method public updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
