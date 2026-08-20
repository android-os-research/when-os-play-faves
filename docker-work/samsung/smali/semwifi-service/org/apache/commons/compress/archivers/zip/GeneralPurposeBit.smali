.class public final Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "GeneralPurposeBit.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DATA_DESCRIPTOR_FLAG:I = 0x8

.field private static final ENCRYPTION_FLAG:I = 0x1

.field private static final NUMBER_OF_SHANNON_FANO_TREES_FLAG:I = 0x4

.field private static final SLIDING_DICTIONARY_SIZE_FLAG:I = 0x2

.field private static final STRONG_ENCRYPTION_FLAG:I = 0x40

.field public static final UFT8_NAMES_FLAG:I = 0x800


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private numberOfShannonFanoTrees:I

.field private slidingDictionarySize:I

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 73
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 74
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    return-void
.end method

.method public static parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .registers 5

    .line 205
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p0

    .line 206
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 207
    :goto_12
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 208
    :goto_1c
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v1

    .line 209
    :goto_26
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2e

    move v1, v2

    .line 210
    :cond_2e
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_38

    const/16 v0, 0x2000

    goto :goto_3a

    :cond_38
    const/16 v0, 0x1000

    .line 211
    :goto_3a
    iput v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->slidingDictionarySize:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_42

    const/4 p0, 0x3

    goto :goto_43

    :cond_42
    const/4 p0, 0x2

    .line 212
    :goto_43
    iput p0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->numberOfShannonFanoTrees:I

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 239
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GeneralPurposeBit is not Cloneable?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encode([BI)V
    .registers 6

    .line 187
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 189
    :goto_9
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x800

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    or-int/2addr v0, v2

    .line 191
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    or-int/2addr v0, v2

    .line 193
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz p0, :cond_1b

    const/16 v1, 0x40

    :cond_1b
    or-int p0, v0, v1

    .line 187
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    return-void
.end method

.method public encode()[B
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode([BI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 226
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 229
    :cond_6
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 230
    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-ne v0, v2, :cond_21

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-ne v0, v2, :cond_21

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-ne v0, v2, :cond_21

    iget-boolean p1, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-ne p1, p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method getNumberOfShannonFanoTrees()I
    .registers 1

    .line 164
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->numberOfShannonFanoTrees:I

    return p0
.end method

.method getSlidingDictionarySize()I
    .registers 1

    .line 157
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->slidingDictionarySize:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 218
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    mul-int/lit8 v0, v0, 0x11

    .line 219
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    .line 220
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    .line 221
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public useDataDescriptor(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return-void
.end method

.method public useEncryption(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return-void
.end method

.method public useStrongEncryption(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    :cond_8
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return-void
.end method

.method public usesDataDescriptor()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return p0
.end method

.method public usesEncryption()Z
    .registers 1

    .line 123
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return p0
.end method

.method public usesStrongEncryption()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public usesUTF8ForNames()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return p0
.end method
