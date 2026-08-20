.class public Lcom/android/server/security/FileIntegrityService$1;
.super Landroid/security/IFileIntegrityService$Stub;
.source "FileIntegrityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/FileIntegrityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/FileIntegrityService;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-direct {p0}, Landroid/security/IFileIntegrityService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkCallerPermission(Ljava/lang/String;)V
    .registers 7

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 87
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 88
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 89
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    .line 90
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 97
    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_27

    return-void

    .line 102
    :cond_27
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v1, 0x42

    .line 103
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3e

    return-void

    .line 106
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller should have INSTALL_PACKAGES or REQUEST_INSTALL_PACKAGES"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not own package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isApkVeritySupported()Z
    .registers 1

    .line 62
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result p0

    return p0
.end method

.method public isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .registers 5

    const-string v0, "FileIntegrityService"

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/server/security/FileIntegrityService$1;->checkCallerPermission(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 71
    :try_start_6
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v1

    if-nez v1, :cond_d

    return p2

    :cond_d
    if-nez p1, :cond_15

    const-string p0, "Received a null certificate"

    .line 75
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 78
    :cond_15
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {p0}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$smtoCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_23
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert the certificate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method
