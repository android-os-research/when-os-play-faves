.class public Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationToken"
.end annotation


# instance fields
.field public mEncryptedEscrowSplit0:[B

.field public mEscrowSplit1:[B

.field public mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

.field public mSecureFolderAuthToken:Z

.field public mSyntheticPassword:[B

.field public final mVersion:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEncryptedEscrowSplit0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEscrowSplit1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyntheticPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B
    .registers 1

    iget-byte p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return p0
.end method

.method public constructor <init>(B)V
    .registers 2

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 452
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->createSdpToken()V

    return-void
.end method

.method public constructor <init>(BLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;)V
    .registers 3

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 618
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    const/4 p1, 0x0

    .line 619
    iput-boolean p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSecureFolderAuthToken:Z

    return-void
.end method

.method public static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 5

    .line 543
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    const/16 v1, 0x20

    .line 544
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 545
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 546
    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 547
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_E0()[B

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v2

    .line 549
    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    return-object v0
.end method

.method public static createSdpMdfppMode(I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 5

    .line 693
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken-IA;)V

    .line 694
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->setSecureMode(I)V

    .line 695
    new-instance p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(BLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;)V

    .line 696
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->isSdpMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0x20

    .line 697
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->RBG(I)[B

    move-result-object v2

    if-nez v2, :cond_28

    const-string v2, "SyntheticPasswordManager.SDP"

    const-string v3, "Unexpected failure while generate random sp"

    .line 699
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 702
    :cond_28
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateForSdpMdfpp([B)V

    .line 703
    invoke-virtual {p0, v1, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 704
    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    goto :goto_36

    .line 706
    :cond_32
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object p0

    :goto_36
    return-object p0
.end method


# virtual methods
.method public final createSdpToken()V
    .registers 3

    .line 610
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken-IA;)V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    const/4 v1, 0x0

    .line 611
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->setSecureMode(I)V

    .line 612
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->setDestroyed(Z)V

    .line 613
    iput-boolean v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSecureFolderAuthToken:Z

    return-void
.end method

.method public final decodeForSdpMdfpp([B)[B
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 684
    :cond_4
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 685
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveDiskEncryptionKey()[B
    .registers 2

    .line 489
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_FBE_KEY()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final deriveDiskEncryptionKeyForSdpMdfpp()[B
    .registers 2

    .line 649
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSdpTokenSyntheticPassword()V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->getSecureMode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateFileSystemKey([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveGkPassword()[B
    .registers 2

    .line 480
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SP_GK_AUTH()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final deriveGkPasswordForSdpMdfpp()[B
    .registers 2

    .line 643
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSdpTokenSyntheticPassword()V

    .line 645
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->getSecureMode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateGatekeeperPassword([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveKeyStorePassword()[B
    .registers 2

    .line 471
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_KEY_STORE_PASSWORD()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$smbytesToHex([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveMetricsKey()[B
    .registers 2

    .line 502
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_PASSWORD_METRICS()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final derivePassword([B)[B
    .registers 4

    .line 456
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 457
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALISATION_CONTEXT()[B

    move-result-object p0

    .line 458
    invoke-virtual {v0, p1, p0}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object p0

    return-object p0

    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 460
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public derivePasswordHashFactor()[B
    .registers 2

    .line 497
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_PASSWORD_HASH()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveSdpMasterKey()[B
    .registers 2

    .line 660
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SDP_MASTER_KEY()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveSdpMasterKeyPersonalized()[B
    .registers 4

    .line 664
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SDP_MASTER_KEY()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHashSDP([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveVendorAuthSecret()[B
    .registers 2

    .line 493
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_AUTHSECRET_KEY()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final deviceKeystorePasswordForSdpMdfpp()[B
    .registers 2

    .line 634
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->ensureSdpTokenSyntheticPassword()V

    .line 636
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->getSecureMode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->generateKeystorePassword([BI)[B

    move-result-object p0

    .line 637
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$smbytesToHex([B)[B

    move-result-object v0

    .line 638
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return-object v0
.end method

.method public final ensureSdpTokenSyntheticPassword()V
    .registers 2

    .line 623
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSdpToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 624
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "The object has been already destroyed!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEscrowSecret()[B
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 577
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_E0()[B

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0, v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSecureFolderAuthToken()Z
    .registers 1

    .line 603
    iget-boolean p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSecureFolderAuthToken:Z

    return p0
.end method

.method public getSyntheticPassword()[B
    .registers 1

    .line 586
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-object p0
.end method

.method public getVersion()B
    .registers 1

    .line 594
    iget-byte p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return p0
.end method

.method public isSdpMdfppMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final recreate([B[B)V
    .registers 6

    .line 558
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SP_SPLIT()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 559
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p1

    .line 558
    invoke-static {p1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-void
.end method

.method public recreateDirectly([B)V
    .registers 3

    .line 536
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-void
.end method

.method public final recreateForSdpMdfpp([B)V
    .registers 3

    .line 672
    invoke-static {p1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-void
.end method

.method public recreateFromEscrow([B)V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    return-void
.end method

.method public setEscrowData([B[B)V
    .registers 3

    .line 511
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    .line 512
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    return-void
.end method

.method public setSecureFolderAuthToken(Z)V
    .registers 2

    const/4 p1, 0x1

    .line 599
    iput-boolean p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSecureFolderAuthToken:Z

    return-void
.end method
