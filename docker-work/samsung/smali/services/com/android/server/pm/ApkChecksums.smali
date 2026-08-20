.class public Lcom/android/server/pm/ApkChecksums;
.super Ljava/lang/Object;
.source "ApkChecksums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ApkChecksums$Injector;
    }
.end annotation


# static fields
.field public static final ALGO_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGO_SHA1:Ljava/lang/String; = "SHA1"

.field public static final ALGO_SHA256:Ljava/lang/String; = "SHA256"

.field public static final ALGO_SHA512:Ljava/lang/String; = "SHA512"

.field public static final DIGESTS_FILE_EXTENSION:Ljava/lang/String; = ".digests"

.field public static final DIGESTS_SIGNATURE_FILE_EXTENSION:Ljava/lang/String; = ".signature"

.field public static final EMPTY_CERTIFICATE_ARRAY:[Ljava/security/cert/Certificate;

.field public static final MAX_BUFFER_SIZE:I = 0x20000

.field public static final MIN_BUFFER_SIZE:I = 0x1000

.field public static final PROCESS_REQUIRED_CHECKSUMS_DELAY_MILLIS:J = 0x3e8L

.field public static final PROCESS_REQUIRED_CHECKSUMS_TIMEOUT_MILLIS:J = 0x5265c00L

.field public static final TAG:Ljava/lang/String; = "ApkChecksums"


# direct methods
.method public static synthetic $r8$lambda$vxQ5QTwtPrj4XZor3Qd7p6DwGxw(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->lambda$processRequiredChecksums$0(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    .line 114
    sput-object v0, Lcom/android/server/pm/ApkChecksums;->EMPTY_CERTIFICATE_ARRAY:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 178
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".digests"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code path is not an apk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".signature"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "II)V"
        }
    .end annotation

    and-int/2addr p3, p4

    if-eqz p3, :cond_1f

    .line 766
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f

    .line 767
    invoke-static {p2, p4}, Lcom/android/server/pm/ApkChecksums;->getApkChecksum(Ljava/io/File;I)[B

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 769
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Landroid/content/pm/ApkChecksum;

    invoke-direct {v0, p1, p4, p2}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public static calculatePartialChecksumsIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    const-string v0, "ApkChecksums"

    and-int/lit8 v1, p3, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    const/16 v1, 0x20

    .line 827
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 826
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    const/16 v4, 0x40

    and-int/2addr p3, v4

    if-eqz p3, :cond_27

    .line 830
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 829
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_27

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    if-nez v1, :cond_2d

    if-nez v2, :cond_2d

    return-void

    .line 835
    :cond_2d
    :try_start_2d
    new-instance p3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {p3, p2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_95
    .catch Ljava/security/DigestException; {:try_start_2d .. :try_end_35} :catch_95

    const/4 v4, 0x0

    .line 838
    :try_start_36
    invoke-static {p3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v4
    :try_end_3a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_36 .. :try_end_3a} :catch_3d
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3b

    goto :goto_41

    :catchall_3b
    move-exception p0

    goto :goto_8c

    .line 841
    :catch_3d
    :try_start_3d
    invoke-static {p3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v4
    :try_end_41
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3d .. :try_end_41} :catch_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3b

    :catch_41
    :goto_41
    if-nez v4, :cond_5f

    .line 846
    :try_start_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "V2/V3 signatures not found in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_3b

    .line 860
    :try_start_5b
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_95
    .catch Ljava/security/DigestException; {:try_start_5b .. :try_end_5e} :catch_95

    return-void

    .line 850
    :cond_5f
    :try_start_5f
    invoke-static {v1, v2}, Lcom/android/server/pm/ApkChecksums;->getContentDigestAlgos(ZZ)[I

    move-result-object p2

    .line 853
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 852
    invoke-static {p2, v1, v4}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    move-result-object v1

    .line 854
    array-length v2, p2

    :goto_6c
    if-ge v3, v2, :cond_88

    .line 855
    aget v4, p2, v3

    invoke-static {v4}, Lcom/android/server/pm/ApkChecksums;->getChecksumKindForContentDigestAlgo(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_85

    .line 857
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/content/pm/ApkChecksum;

    aget-object v7, v1, v3

    invoke-direct {v6, p1, v4, v7}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_5f .. :try_end_85} :catchall_3b

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 860
    :cond_88
    :try_start_88
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_95
    .catch Ljava/security/DigestException; {:try_start_88 .. :try_end_8b} :catch_95

    goto :goto_9b

    .line 835
    :goto_8c
    :try_start_8c
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception p1

    :try_start_91
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw p0
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_95} :catch_95
    .catch Ljava/security/DigestException; {:try_start_91 .. :try_end_95} :catch_95

    :catch_95
    move-exception p0

    const-string p1, "Error computing hash."

    .line 861
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9b
    return-void
.end method

.method public static containsFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 645
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            ")",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 622
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 623
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    .line 624
    new-instance v4, Landroid/content/pm/Signature;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    return-object v0
.end method

.method public static extractHashFromFS(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApkChecksum;
    .registers 7

    .line 652
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/ApkChecksums;->containsFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 653
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->getFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_17

    .line 655
    new-instance p1, Landroid/content/pm/ApkChecksum;

    invoke-direct {p1, p0, v1, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    return-object p1

    :cond_17
    const/4 v0, 0x0

    .line 661
    :try_start_18
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v2

    .line 662
    iget-object v2, v2, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    const/4 v3, 0x3

    .line 663
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 662
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_42

    .line 665
    new-instance v3, Landroid/content/pm/ApkChecksum;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-static {v4, v2}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object p1

    invoke-direct {v3, p0, v1, p1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V
    :try_end_39
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_18 .. :try_end_39} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_39} :catch_3a

    return-object v3

    :catch_3a
    move-exception p0

    const-string p1, "ApkChecksums"

    const-string v1, "V4 signature error"

    .line 671
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_42
    :cond_42
    return-object v0
.end method

.method public static extractHashFromV2V3Signature(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;"
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 716
    invoke-static {v0, p1, v1, v2}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 718
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 719
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Landroid/util/apk/SignatureNotFoundException;

    if-nez v0, :cond_24

    .line 720
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "ApkChecksums"

    const-string v3, "Signature verification error"

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    move-object p1, v2

    goto :goto_2e

    .line 723
    :cond_26
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object p1, p1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;

    :goto_2e
    if-nez p1, :cond_31

    return-object v2

    .line 730
    :cond_31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    .line 732
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_55

    const/16 v4, 0x20

    .line 734
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/content/pm/ApkChecksum;

    invoke-direct {v6, p0, v4, v3}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    const/16 v3, 0x40

    and-int/2addr p2, v3

    if-eqz p2, :cond_72

    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_72

    .line 741
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Landroid/content/pm/ApkChecksum;

    invoke-direct {v1, p0, v3, p1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    return-object v0
.end method

.method public static findDigestsForFile(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public static findSignatureForDigests(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ApkChecksums;->buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 216
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public static getApkChecksum(Ljava/io/File;I)[B
    .registers 8

    const-string v0, "ApkChecksums"

    .line 779
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    .line 778
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    .line 780
    :try_start_15
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1a} :catch_42

    .line 781
    :try_start_1a
    new-array v1, v1, [B

    .line 784
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->getMessageDigestAlgoForChecksumKind(I)Ljava/lang/String;

    move-result-object p1

    .line 785
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 786
    :goto_24
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_30

    const/4 v5, 0x0

    .line 787
    invoke-virtual {p1, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_24

    .line 790
    :cond_30
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_38

    .line 791
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_37} :catch_42

    return-object p1

    :catchall_38
    move-exception p1

    .line 780
    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v1

    :try_start_3e
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw p1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_42} :catch_42

    :catch_42
    move-exception p0

    const-string p1, "Device does not support MessageDigest algorithm"

    .line 795
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_49
    move-exception p1

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to compute hash."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")V"
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 397
    invoke-static {v1, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 399
    invoke-static {p0, v0}, Lcom/android/server/pm/ApkChecksums;->extractHashFromFS(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApkChecksum;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 401
    invoke-virtual {v1}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/16 v1, 0x20

    .line 406
    invoke-static {v1, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2c

    const/16 v1, 0x40

    invoke-static {v1, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 408
    :cond_2c
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/ApkChecksums;->extractHashFromV2V3Signature(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 411
    invoke-interface {p5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 417
    :cond_35
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->getInstallerChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void
.end method

.method public static getChecksumKindForContentDigestAlgo(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/16 p0, 0x40

    return p0

    :cond_b
    const/16 p0, 0x20

    return p0
.end method

.method public static getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;II",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Landroid/content/pm/IOnChecksumsReadyListener;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v4, v0

    :goto_10
    if-ge v4, v3, :cond_47

    .line 318
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 319
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    .line 320
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 321
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    or-int v7, p1, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    .line 324
    :try_start_37
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ApkChecksums;->getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_44

    :catchall_3b
    move-exception v0

    move-object v5, v0

    const-string v0, "ApkChecksums"

    const-string v6, "Preferred checksum calculation error"

    .line 327
    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 331
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 332
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    return-void
.end method

.method public static getContentDigestAlgos(ZZ)[I
    .registers 4

    const/4 v0, 0x2

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    new-array p0, v0, [I

    .line 804
    fill-array-data p0, :array_1a

    return-object p0

    :cond_b
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_14

    new-array p0, v1, [I

    aput v1, p0, p1

    return-object p0

    :cond_14
    new-array p0, v1, [I

    aput v0, p0, p1

    return-object p0

    nop

    :array_1a
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public static getInstallerChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")V"
        }
    .end annotation

    const-string v0, "ApkChecksums"

    .line 427
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-eqz p4, :cond_f

    .line 430
    array-length v1, p4

    if-nez v1, :cond_f

    return-void

    .line 434
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findDigestsForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_16

    return-void

    .line 438
    :cond_16
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findSignatureForDigests(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 441
    :try_start_1a
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    .line 447
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p6

    invoke-static {p6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p6

    .line 446
    invoke-static {v2, p6}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    move-result-object p6

    if-eqz p6, :cond_4c

    .line 448
    array-length v4, p6

    if-nez v4, :cond_33

    goto :goto_4c

    .line 453
    :cond_33
    array-length v4, p6

    new-array v4, v4, [Landroid/content/pm/Signature;

    .line 454
    array-length v5, p6

    move v6, v3

    :goto_38
    if-ge v6, v5, :cond_4a

    .line 455
    new-instance v7, Landroid/content/pm/Signature;

    aget-object v8, p6, v6

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_4a
    const/4 p6, 0x0

    goto :goto_72

    :cond_4c
    :goto_4c
    const-string p0, "Error validating signature"

    .line 449
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 460
    :cond_52
    invoke-virtual {p6}, Lcom/android/server/pm/ApkChecksums$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p6

    invoke-virtual {p6, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p6

    if-nez p6, :cond_62

    const-string p0, "Installer package not found."

    .line 463
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_62
    invoke-interface {p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 469
    invoke-interface {p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p6

    :goto_72
    if-eqz v4, :cond_108

    .line 471
    array-length v5, v4

    if-eqz v5, :cond_108

    aget-object v5, v4, v3

    if-nez v5, :cond_7d

    goto/16 :goto_108

    .line 478
    :cond_7d
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 480
    invoke-static {p4}, Lcom/android/server/pm/ApkChecksums;->convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;

    move-result-object p4

    if-eqz p4, :cond_9e

    .line 482
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 484
    invoke-static {v4, p4}, Lcom/android/server/pm/ApkChecksums;->isTrusted([Landroid/content/pm/Signature;Ljava/util/Set;)Landroid/content/pm/Signature;

    move-result-object v4

    if-nez v4, :cond_97

    .line 486
    invoke-static {p6, p4}, Lcom/android/server/pm/ApkChecksums;->isTrusted([Landroid/content/pm/Signature;Ljava/util/Set;)Landroid/content/pm/Signature;

    move-result-object v4

    :cond_97
    if-nez v4, :cond_9a

    return-void

    .line 491
    :cond_9a
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 495
    :cond_9e
    array-length p4, v2

    move p6, v3

    :goto_a0
    if-ge p6, p4, :cond_e6

    aget-object v4, v2, p6

    .line 496
    invoke-virtual {v4}, Landroid/content/pm/Checksum;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApkChecksum;

    if-eqz v6, :cond_e3

    .line 497
    invoke-virtual {v6}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_c3

    goto :goto_e3

    .line 498
    :cond_c3
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "System digest "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/Checksum;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mismatch, can\'t bind installer-provided digests to the APK."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e3
    :goto_e3
    add-int/lit8 p6, p6, 0x1

    goto :goto_a0

    .line 504
    :cond_e6
    array-length p4, v2

    :goto_e7
    if-ge v3, p4, :cond_132

    aget-object p6, v2, v3

    .line 505
    invoke-virtual {p6}, Landroid/content/pm/Checksum;->getType()I

    move-result v4

    invoke-static {v4, p2, p5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 506
    invoke-virtual {p6}, Landroid/content/pm/Checksum;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Landroid/content/pm/ApkChecksum;

    invoke-direct {v6, p0, p6, p3, v5}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    invoke-interface {p5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    :cond_108
    :goto_108
    const-string p0, "Can\'t obtain certificates."

    .line 472
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_10d} :catch_12c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_10d} :catch_115
    .catch Ljava/security/SignatureException; {:try_start_1a .. :try_end_10d} :catch_115
    .catch Ljava/security/InvalidParameterException; {:try_start_1a .. :try_end_10d} :catch_115
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1a .. :try_end_10d} :catch_10e

    return-void

    :catch_10e
    move-exception p0

    const-string p1, "Error encoding trustedInstallers"

    .line 522
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    :catch_115
    move-exception p0

    const-string p2, "Error validating digests. Invalid digests will be removed"

    .line 513
    invoke-static {v0, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    :try_start_11b
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    if-eqz v1, :cond_132

    .line 517
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_12b} :catch_132

    goto :goto_132

    :catch_12c
    move-exception p0

    const-string p1, "Error reading .digests or .signature"

    .line 511
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_132
    :cond_132
    :goto_132
    return-void
.end method

.method public static getMessageDigestAlgoForChecksumKind(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_28

    const/16 v0, 0x10

    if-ne p0, v0, :cond_11

    const-string p0, "SHA512"

    return-object p0

    .line 760
    :cond_11
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid checksum type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const-string p0, "SHA256"

    return-object p0

    :cond_2b
    const-string p0, "SHA1"

    return-object p0

    :cond_2e
    const-string p0, "MD5"

    return-object p0
.end method

.method public static getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 576
    invoke-static {v1, p2, p3}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    .line 578
    :try_start_c
    new-instance v3, Lcom/android/server/pm/ApkChecksums$1;

    invoke-direct {v3}, Lcom/android/server/pm/ApkChecksums$1;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/apk/VerityBuilder;->generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/pm/ApkChecksum;

    .line 588
    invoke-static {p1, v0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object v0

    invoke-direct {v3, p0, v1, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 586
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_25} :catch_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_25} :catch_26
    .catch Ljava/security/DigestException; {:try_start_c .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v0

    const-string v1, "ApkChecksums"

    const-string v2, "Error calculating WHOLE_MERKLE_ROOT_4K_SHA256"

    .line 590
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
    const/4 v0, 0x2

    .line 594
    invoke-static {p3, p0, p1, p2, v0}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const/4 v0, 0x4

    .line 595
    invoke-static {p3, p0, p1, p2, v0}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const/16 v0, 0x8

    .line 596
    invoke-static {p3, p0, p1, p2, v0}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const/16 v0, 0x10

    .line 597
    invoke-static {p3, p0, p1, p2, v0}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 599
    invoke-static {p3, p0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->calculatePartialChecksumsIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public static isDigestOrDigestSignatureFile(Ljava/io/File;)Z
    .registers 2

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".digests"

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, ".signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static isRequired(IILjava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;)Z"
        }
    .end annotation

    and-int/2addr p1, p0

    const/4 v0, 0x0

    if-nez p1, :cond_5

    return v0

    .line 607
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static isTrusted([Landroid/content/pm/Signature;Ljava/util/Set;)Landroid/content/pm/Signature;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;)",
            "Landroid/content/pm/Signature;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 633
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 634
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    return-object v0
.end method

.method public static synthetic lambda$processRequiredChecksums$0(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .registers 7

    .line 355
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    return-void
.end method

.method public static needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 533
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    const/4 v1, 0x2

    .line 534
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x4

    .line 535
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x8

    .line 536
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x10

    .line 537
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x20

    .line 538
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x40

    .line 539
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_37

    return v2

    .line 543
    :cond_37
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 544
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    .line 548
    :cond_42
    invoke-virtual {p3}, Lcom/android/server/pm/ApkChecksums$Injector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object p1

    const-string p2, "ApkChecksums"

    if-nez p1, :cond_50

    const-string p0, "IncrementalManager is missing."

    .line 550
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 553
    :cond_50
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p1

    if-nez p1, :cond_6b

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IncrementalStorage is missing for a path on IncFs: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 559
    :cond_6b
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->isFileFullyLoaded(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/ApkChecksum;",
            ">;>;I",
            "Landroid/content/pm/IOnChecksumsReadyListener;",
            "Lcom/android/server/pm/ApkChecksums$Injector;",
            "J)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p2

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v0, p5

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    move v11, v0

    goto :goto_16

    :cond_15
    move v11, v1

    .line 344
    :goto_16
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    move v14, v1

    :goto_20
    const-string v15, "ApkChecksums"

    if-ge v14, v13, :cond_7f

    .line 346
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    move-object/from16 v7, p1

    .line 348
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v11, :cond_44

    if-eqz v10, :cond_6c

    :cond_44
    move-object/from16 v8, p4

    .line 352
    :try_start_46
    invoke-static {v1, v10, v2, v8}, Lcom/android/server/pm/ApkChecksums;->needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 354
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/ApkChecksums$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v6, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 361
    :cond_69
    invoke-static {v0, v1, v10, v2}, Lcom/android/server/pm/ApkChecksums;->getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V

    .line 363
    :cond_6c
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_73
    .catchall {:try_start_46 .. :try_end_73} :catchall_74

    goto :goto_7a

    :catchall_74
    move-exception v0

    const-string v1, "Required checksum calculation error"

    .line 365
    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p0

    goto :goto_20

    :cond_7f
    move-object/from16 v1, p3

    .line 370
    :try_start_81
    invoke-interface {v1, v12}, Landroid/content/pm/IOnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_8a

    :catch_85
    move-exception v0

    move-object v1, v0

    .line 372
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8a
    return-void
.end method

.method public static readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 234
    :try_start_5
    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/InputStream;)[Landroid/content/pm/Checksum;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 235
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_d
    move-exception p0

    .line 233
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
.end method

.method public static readChecksums(Ljava/io/InputStream;)[Landroid/content/pm/Checksum;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    :try_start_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_29

    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0x64

    if-ge v1, v2, :cond_19

    .line 248
    :try_start_f
    invoke-static {v0}, Landroid/content/pm/Checksum;->readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_16} :catch_19
    .catchall {:try_start_f .. :try_end_16} :catchall_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 253
    :catch_19
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Checksum;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Checksum;
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_29

    .line 254
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object p0

    :catchall_29
    move-exception p0

    .line 243
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method public static verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    :try_start_5
    invoke-static {v0, p0}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_63

    .line 270
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 272
    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 274
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 275
    array-length p1, p1

    if-eqz p1, :cond_5b

    .line 279
    invoke-virtual {v0, p0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 280
    array-length p1, p0

    if-eqz p1, :cond_53

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    array-length v1, p0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_46

    aget-object v3, p0, v2

    .line 286
    invoke-virtual {v3, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 291
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 288
    :cond_3e
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Verification passed, but certification chain is empty."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 294
    :cond_46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    .line 281
    :cond_53
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Verification failed"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_5b
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Signature missing certificates"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_63
    move-exception p0

    .line 267
    :try_start_64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw p0
.end method

.method public static verityHashForFile(Ljava/io/File;[B)[B
    .registers 6

    const/16 v0, 0x100

    .line 684
    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 685
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 686
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 687
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    .line 688
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 689
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 690
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 691
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 692
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move p0, v1

    :goto_29
    const/16 p1, 0xd0

    if-ge p0, p1, :cond_33

    .line 697
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_29

    .line 700
    :cond_33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string p0, "SHA256"

    .line 702
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 703
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 704
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    move-exception p0

    const-string p1, "ApkChecksums"

    const-string v0, "Device does not support MessageDigest algorithm"

    .line 706
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    :try_start_5
    array-length p0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_11

    aget-object v2, p1, v1

    .line 227
    invoke-static {v0, v2}, Landroid/content/pm/Checksum;->writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 229
    :cond_11
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_15
    move-exception p0

    .line 225
    :try_start_16
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0
.end method
