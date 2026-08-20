.class public Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.super Ljava/lang/Object;
.source "UcmKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field protected blacklist mAlgorithm:Ljava/lang/String;

.field private final blacklist mAlias:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 52
    return v0

    .line 54
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 55
    return v1

    .line 57
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 58
    return v1

    .line 60
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    .line 62
    .local v2, "other":Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 63
    iget-object v3, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 64
    return v1

    .line 66
    :cond_1f
    iget-object v4, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 67
    return v1

    .line 70
    :cond_28
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 71
    iget-object v3, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 72
    return v1

    .line 74
    :cond_31
    iget-object v4, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 75
    return v1

    .line 77
    :cond_3a
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getAlias()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 42
    const/16 v0, 0x1f

    .line 43
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 44
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 45
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1c
    add-int/2addr v1, v4

    .line 46
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
