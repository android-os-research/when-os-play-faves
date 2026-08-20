.class public final Landroid/content/pm/SigningDetails;
.super Ljava/lang/Object;
.source "SigningDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningDetails$Builder;,
        Landroid/content/pm/SigningDetails$CapabilityMergeRule;,
        Landroid/content/pm/SigningDetails$CertCapabilities;,
        Landroid/content/pm/SigningDetails$SignatureSchemeVersion;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PAST_CERT_EXISTS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SigningDetails"

.field public static final blacklist UNKNOWN:Landroid/content/pm/SigningDetails;


# instance fields
.field private final blacklist mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private final blacklist mPublicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSignatureSchemeVersion:I

.field private final blacklist mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 139
    new-instance v0, Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 832
    new-instance v0, Landroid/content/pm/SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .registers 5
    .param p1, "orig"    # Landroid/content/pm/SigningDetails;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 168
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_13

    .line 169
    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_15

    .line 171
    :cond_13
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 173
    :goto_15
    iget v1, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 174
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 175
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_2f

    .line 176
    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3b

    .line 178
    :cond_2f
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3b

    .line 181
    :cond_32
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 183
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 184
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 186
    :goto_3b
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 826
    .local v0, "boot":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 828
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 829
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 830
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    .line 164
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .registers 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p4, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 145
    .local p3, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 147
    iput p2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 148
    iput-object p3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 149
    iput-object p4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 150
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    .registers 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p3, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 156
    invoke-static {p1}, Landroid/content/pm/SigningDetails;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 158
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1009
    return-void
.end method

.method private blacklist getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 9
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 463
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 466
    move-object v0, p0

    .line 467
    .local v0, "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    move-object v2, p1

    .local v2, "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    goto :goto_12

    .line 468
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    :cond_a
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 472
    move-object v0, p1

    .line 473
    .restart local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    move-object v2, p0

    .line 481
    .restart local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    :goto_12
    iget-object v3, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 482
    .local v3, "descendantIndex":I
    iget-object v4, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 483
    .local v4, "ancestorIndex":I
    :goto_1c
    if-ltz v3, :cond_2f

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 484
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 486
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 490
    :cond_2f
    if-gez v3, :cond_32

    .line 491
    return-object v1

    .line 496
    :cond_32
    add-int/lit8 v3, v3, -0x1

    .line 497
    add-int/lit8 v4, v4, -0x1

    .line 498
    if-ltz v3, :cond_48

    if-ltz v4, :cond_48

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 499
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 504
    :cond_48
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    .line 505
    return-object v1

    .line 509
    :cond_4d
    return-object v0

    .line 477
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v3    # "descendantIndex":I
    .end local v4    # "ancestorIndex":I
    :cond_4e
    return-object v1
.end method

.method private blacklist hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 8
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 692
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 693
    return v1

    .line 697
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_2d

    .line 701
    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 702
    if-eqz p2, :cond_29

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 703
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2a

    .line 704
    :cond_29
    return v2

    .line 700
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 712
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    if-ne v3, v2, :cond_3b

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v1, v2

    :cond_3b
    return v1
.end method

.method private blacklist hasSha256CertificateInternal([BI)Z
    .registers 8
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 775
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 776
    return v1

    .line 778
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_35

    .line 782
    aget-object v3, v3, v0

    .line 783
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 782
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    .line 784
    .local v3, "digest":[B
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 785
    if-eqz p2, :cond_31

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    .line 786
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_32

    .line 787
    :cond_31
    return v2

    .line 781
    .end local v3    # "digest":[B
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 794
    .end local v0    # "i":I
    :cond_35
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    if-ne v3, v2, :cond_49

    .line 795
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    .line 796
    .local v0, "digest":[B
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 798
    .end local v0    # "digest":[B
    :cond_49
    return v1
.end method

.method private blacklist mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 13
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "mergeRule"    # I

    .line 295
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 296
    .local v0, "index":I
    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 297
    .local v2, "otherIndex":I
    if-ltz v0, :cond_ed

    if-gez v2, :cond_f

    goto/16 :goto_ed

    .line 301
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v3, "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    const/4 v4, 0x0

    .line 305
    .local v4, "capabilitiesModified":Z
    :goto_15
    if-ltz v0, :cond_35

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    iget-object v6, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 307
    new-instance v5, Landroid/content/pm/Signature;

    iget-object v6, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    .end local v0    # "index":I
    .local v7, "index":I
    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_15

    .line 311
    .end local v7    # "index":I
    .restart local v0    # "index":I
    :cond_35
    if-gez v0, :cond_38

    .line 312
    return-object p0

    .line 318
    :cond_38
    :goto_38
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    .end local v0    # "index":I
    .local v6, "index":I
    aget-object v0, v5, v0

    .line 319
    .local v0, "signature":Landroid/content/pm/Signature;
    iget-object v5, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v2, -0x1

    .end local v2    # "otherIndex":I
    .local v7, "otherIndex":I
    aget-object v2, v5, v2

    .line 321
    .local v2, "ancestorSignature":Landroid/content/pm/Signature;
    new-instance v5, Landroid/content/pm/Signature;

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 322
    .local v5, "mergedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    if-eq v8, v9, :cond_75

    .line 323
    const/4 v4, 0x1

    .line 324
    packed-switch p2, :pswitch_data_ee

    goto :goto_75

    .line 332
    :pswitch_58
    nop

    .line 333
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    and-int/2addr v8, v9

    .line 332
    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_75

    .line 329
    :pswitch_66
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 330
    goto :goto_75

    .line 326
    :pswitch_6e
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 337
    :cond_75
    :goto_75
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v0    # "signature":Landroid/content/pm/Signature;
    .end local v2    # "ancestorSignature":Landroid/content/pm/Signature;
    .end local v5    # "mergedSignature":Landroid/content/pm/Signature;
    if-ltz v6, :cond_8e

    if-ltz v7, :cond_8e

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v6

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_8e

    :cond_8b
    move v0, v6

    move v2, v7

    goto :goto_38

    .line 343
    :cond_8e
    :goto_8e
    if-ltz v6, :cond_93

    if-ltz v7, :cond_93

    .line 344
    return-object p0

    .line 349
    :cond_93
    :goto_93
    if-ltz v7, :cond_a5

    .line 350
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v7, -0x1

    .end local v7    # "otherIndex":I
    .local v5, "otherIndex":I
    aget-object v2, v2, v7

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v5

    goto :goto_93

    .line 353
    .end local v5    # "otherIndex":I
    .restart local v7    # "otherIndex":I
    :cond_a5
    :goto_a5
    if-ltz v6, :cond_b7

    .line 354
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v6, -0x1

    .end local v6    # "index":I
    .local v5, "index":I
    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_a5

    .line 359
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_b7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ne v0, v2, :cond_c3

    if-nez v4, :cond_c3

    .line 361
    return-object p0

    .line 365
    :cond_c3
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 367
    :try_start_c6
    new-instance v0, Landroid/content/pm/SigningDetails;

    new-array v1, v1, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-direct {v2, v5}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v2, v1, v8

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    new-array v5, v8, [Landroid/content/pm/Signature;

    .line 368
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_e3
    .catch Ljava/security/cert/CertificateException; {:try_start_c6 .. :try_end_e3} :catch_e4

    .line 367
    return-object v0

    .line 369
    :catch_e4
    move-exception v0

    .line 370
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "SigningDetails"

    const-string v2, "Caught an exception creating the merged lineage: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-object p0

    .line 298
    .end local v3    # "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    .end local v4    # "capabilitiesModified":Z
    .end local v6    # "index":I
    .end local v7    # "otherIndex":I
    .local v0, "index":I
    .local v2, "otherIndex":I
    :cond_ed
    :goto_ed
    return-object p0

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_66
        :pswitch_58
    .end packed-switch
.end method

.method public static blacklist toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 939
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 940
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 941
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 943
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist checkCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 7
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I

    .line 624
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1a

    if-ne p1, v0, :cond_8

    goto :goto_1a

    .line 627
    :cond_8
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    .line 630
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 635
    :cond_13
    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0

    .line 625
    :cond_1a
    :goto_1a
    return v1
.end method

.method public blacklist checkCapability(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "sha256String"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 731
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_28

    .line 736
    :cond_c
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 737
    .local v0, "sha256Bytes":[B
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 738
    const/4 v1, 0x1

    return v1

    .line 746
    :cond_18
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 747
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "mSignaturesSha256Digests":[Ljava/lang/String;
    nop

    .line 749
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "mSignaturesSha256Digest":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 732
    .end local v0    # "sha256Bytes":[B
    .end local v1    # "mSignaturesSha256Digests":[Ljava/lang/String;
    .end local v2    # "mSignaturesSha256Digest":Ljava/lang/String;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 645
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3e

    if-ne p0, v0, :cond_8

    goto :goto_3e

    .line 648
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    .line 650
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    if-ge v0, v4, :cond_34

    .line 651
    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    aget-object v3, v3, v0

    invoke-static {v4, v3}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 654
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    if-ne v3, p2, :cond_31

    .line 655
    return v2

    .line 650
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 661
    .end local v0    # "i":I
    :cond_34
    return v1

    .line 659
    :cond_35
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    .line 646
    :cond_3e
    :goto_3e
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 850
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 851
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 853
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SigningDetails;

    .line 855
    .local v1, "that":Landroid/content/pm/SigningDetails;
    iget v3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v4, v1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    if-eq v3, v4, :cond_14

    return v2

    .line 856
    :cond_14
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    .line 857
    :cond_1f
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_2c

    .line 858
    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 859
    return v2

    .line 861
    :cond_2c
    iget-object v3, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_31

    .line 862
    return v2

    .line 866
    :cond_31
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 867
    return v2

    .line 870
    :cond_3c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v4

    if-ge v3, v5, :cond_56

    .line 871
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 872
    invoke-virtual {v5}, Landroid/content/pm/Signature;->getFlags()I

    move-result v5

    if-eq v4, v5, :cond_53

    .line 873
    return v2

    .line 870
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 876
    .end local v3    # "i":I
    :cond_56
    return v0
.end method

.method public blacklist getPastSigningCertificates()[Landroid/content/pm/Signature;
    .registers 2

    .line 1000
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist getPublicKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSignatureSchemeVersion()I
    .registers 2

    .line 974
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    return v0
.end method

.method public blacklist getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 966
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist hasAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 7
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;

    .line 550
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2c

    if-ne p1, v0, :cond_8

    goto :goto_2c

    .line 553
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_2b

    .line 556
    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 557
    return v2

    .line 555
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 561
    .end local v0    # "i":I
    :cond_2b
    return v1

    .line 551
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z
    .registers 6
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;

    .line 530
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1a

    if-ne p1, v0, :cond_8

    goto :goto_1a

    .line 533
    :cond_8
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    .line 536
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 540
    :cond_13
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    .line 531
    :cond_1a
    :goto_1a
    return v1
.end method

.method public blacklist hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 412
    .local p1, "certDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6b

    if-eqz p1, :cond_6b

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6b

    .line 416
    :cond_e
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    .line 420
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    if-ge v0, v4, :cond_1e

    .line 421
    return v1

    .line 423
    :cond_1e
    array-length v0, v2

    move v4, v1

    :goto_20
    if-ge v4, v0, :cond_37

    aget-object v5, v2, v4

    .line 424
    .local v5, "signature":Landroid/content/pm/Signature;
    nop

    .line 425
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 424
    invoke-static {v6}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "signatureDigest":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 427
    return v1

    .line 423
    .end local v5    # "signature":Landroid/content/pm/Signature;
    .end local v6    # "signatureDigest":Ljava/lang/String;
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 430
    :cond_37
    return v3

    .line 433
    :cond_38
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "signatureDigest":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 435
    return v3

    .line 437
    :cond_49
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 440
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_50
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v4

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_6a

    .line 441
    aget-object v4, v4, v2

    .line 442
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 441
    invoke-static {v4}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 444
    return v3

    .line 440
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 448
    .end local v2    # "i":I
    :cond_6a
    return v1

    .line 413
    .end local v0    # "signatureDigest":Ljava/lang/String;
    :cond_6b
    :goto_6b
    return v1
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 4
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 682
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCertificate([B)Z
    .registers 4
    .param p1, "certificate"    # [B

    .line 687
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 688
    .local v0, "signature":Landroid/content/pm/Signature;
    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v1

    return v1
.end method

.method public blacklist hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 387
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    .line 390
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 392
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 393
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 398
    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public blacklist hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 9
    .param p1, "otherDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I

    .line 577
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_67

    if-ne p1, v0, :cond_8

    goto :goto_67

    .line 582
    :cond_8
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_62

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_14

    goto :goto_62

    .line 587
    :cond_14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 588
    .local v0, "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 589
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 591
    :cond_29
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 595
    :goto_32
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 596
    return v2

    .line 598
    :cond_3d
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 601
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v4

    sub-int/2addr v5, v2

    if-ge v3, v5, :cond_61

    .line 602
    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 604
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_5e

    .line 605
    return v2

    .line 601
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 610
    .end local v3    # "i":I
    :cond_61
    return v1

    .line 583
    .end local v0    # "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :cond_62
    :goto_62
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 578
    :cond_67
    :goto_67
    return v1
.end method

.method public blacklist hasPastSigningCertificates()Z
    .registers 2

    .line 519
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist hasSha256Certificate([B)Z
    .registers 3
    .param p1, "sha256Certificate"    # [B

    .line 759
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSha256Certificate([BI)Z
    .registers 4
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 771
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSignatures()Z
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 881
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 882
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    add-int/2addr v1, v2

    .line 883
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    .line 884
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 885
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "mergeRule"    # I

    .line 244
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_17

    .line 246
    nop

    .line 245
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 246
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p0

    .line 245
    :goto_16
    return-object v0

    .line 248
    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 249
    return-object p0

    .line 253
    :cond_1e
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 254
    .local v0, "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    if-nez v0, :cond_25

    .line 255
    return-object p0

    .line 257
    :cond_25
    move-object v1, p0

    .line 258
    .local v1, "mergedDetails":Landroid/content/pm/SigningDetails;
    if-ne v0, p0, :cond_2d

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    .line 265
    :cond_2d
    packed-switch p2, :pswitch_data_44

    goto :goto_42

    .line 275
    :pswitch_31
    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    .line 271
    :pswitch_36
    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 273
    goto :goto_42

    .line 267
    :pswitch_3c
    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 269
    nop

    .line 280
    :goto_42
    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z
    .registers 4
    .param p1, "other"    # Landroid/content/pm/SigningDetails;

    .line 803
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 813
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 814
    .local v0, "isUnknown":Z
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 815
    if-eqz v0, :cond_d

    .line 816
    return-void

    .line 818
    :cond_d
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 819
    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 821
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 822
    return-void
.end method
