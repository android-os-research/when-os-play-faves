.class public interface abstract Landroid/security/IGenerateRkpKeyService$Status$$;
.super Ljava/lang/Object;
.source "IGenerateRkpKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IGenerateRkpKeyService$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 225
    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    .line 226
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 228
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 229
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 230
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 231
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 232
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/security/IGenerateRkpKeyService$Status$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .end local v3    # "_aidl_i":I
    :cond_3a
    goto :goto_52

    .line 235
    :cond_3b
    const-class v3, [I

    if-ne v0, v3, :cond_57

    .line 236
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_44
    if-ge v5, v4, :cond_52

    aget v6, v3, v5

    .line 237
    .local v6, "e":I
    invoke-static {v6}, Landroid/security/IGenerateRkpKeyService$Status$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 236
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 240
    :cond_52
    :goto_52
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 235
    :cond_57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    .end local v1    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "_aidl_sj":Ljava/util/StringJoiner;
    :cond_71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "_aidl_v"    # I

    .line 214
    if-nez p0, :cond_5

    const-string v0, "OK"

    return-object v0

    .line 215
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "NO_NETWORK_CONNECTIVITY"

    return-object v0

    .line 216
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "NETWORK_COMMUNICATION_ERROR"

    return-object v0

    .line 217
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const-string v0, "DEVICE_NOT_REGISTERED"

    return-object v0

    .line 218
    :cond_17
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1d

    const-string v0, "HTTP_CLIENT_ERROR"

    return-object v0

    .line 219
    :cond_1d
    const/4 v0, 0x6

    if-ne p0, v0, :cond_23

    const-string v0, "HTTP_SERVER_ERROR"

    return-object v0

    .line 220
    :cond_23
    const/4 v0, 0x7

    if-ne p0, v0, :cond_29

    const-string v0, "HTTP_UNKNOWN_ERROR"

    return-object v0

    .line 221
    :cond_29
    const/16 v0, 0x8

    if-ne p0, v0, :cond_30

    const-string v0, "INTERNAL_ERROR"

    return-object v0

    .line 222
    :cond_30
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
