.class public Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustListOperation"
.end annotation


# static fields
.field public static final AUDIT_ADD_TRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

.field public static final AUDIT_ADD_UNTRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

.field public static final AUDIT_REMOVE_TRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

.field public static final AUDIT_REMOVE_UNTRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"


# instance fields
.field public mAction:I

.field public mAuditMessageFormat:Ljava/lang/String;

.field public mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field public mDbColumn:Ljava/lang/String;

.field public mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 6

    .line 2478
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2479
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    const-string/jumbo v0, "trustedCaList"

    if-eqz p2, :cond_58

    const/4 v1, 0x1

    const-string/jumbo v2, "untrustedCertsList"

    if-eq p2, v1, :cond_45

    const/4 v1, 0x2

    if-eq p2, v1, :cond_32

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1f

    const/4 v1, 0x4

    if-eq p2, v1, :cond_58

    const/4 v0, 0x5

    if-eq p2, v0, :cond_45

    goto :goto_6a

    :cond_1f
    const-string p2, "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

    .line 2502
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2503
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmUntrustedKeyStore(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2504
    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2505
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmUntrustedCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_6a

    :cond_32
    const-string p2, "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

    .line 2489
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2490
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmTrustedKeyStore(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2491
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2492
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmTrustedCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_6a

    :cond_45
    const-string p2, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    .line 2496
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2497
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmUntrustedKeyStore(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2498
    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2499
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmUntrustedCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_6a

    :cond_58
    const-string p2, "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

    .line 2483
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    .line 2484
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmTrustedKeyStore(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2485
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 2486
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmTrustedCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    :goto_6a
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 1

    .line 2523
    iget p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    return p0
.end method

.method public getAuditMessageFormat()Ljava/lang/String;
    .registers 1

    .line 2527
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getCache()Lcom/android/server/enterprise/certificate/CertificateCache;
    .registers 1

    .line 2511
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object p0
.end method

.method public getDbColumn()Ljava/lang/String;
    .registers 1

    .line 2515
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    return-object p0
.end method

.method public getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 1

    .line 2519
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object p0
.end method
