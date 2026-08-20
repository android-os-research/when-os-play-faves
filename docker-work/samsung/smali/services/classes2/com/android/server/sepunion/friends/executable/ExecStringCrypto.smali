.class public Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;
.super Ljava/lang/Object;
.source "ExecStringCrypto.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final TAG:Ljava/lang/String; = "ExecStringCrypto"


# direct methods
.method public static synthetic $r8$lambda$fWba_jeGfE7qWlCBz3vSSVrPXgk(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->lambda$getDecryptedMultipleData$1(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w1xLvBAT7p2BT6Bymo8wQsJzDBM(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->lambda$getEncryptedMultipleData$0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getDecryptedMultipleData$1(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    .line 101
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getEncryptedMultipleData$0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    .line 74
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 6

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ExecStringCrypto"

    const-string v1, "ActionSecurityUtil"

    .line 158
    invoke-static {v0, v1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_24

    sparse-switch p3, :sswitch_data_26

    goto :goto_24

    .line 172
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 169
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 166
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 163
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_26
    .sparse-switch
        0x120003 -> :sswitch_1f
        0x120004 -> :sswitch_1a
        0x120010 -> :sswitch_15
        0x120011 -> :sswitch_10
    .end sparse-switch
.end method

.method public final getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const-string p0, "dataType"

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "decryptResult"

    const-string v2, "decryptData"

    if-nez p0, :cond_20

    .line 49
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 51
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    .line 52
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    goto :goto_34

    .line 55
    :cond_20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_33

    .line 57
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    .line 58
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    goto :goto_34

    :cond_33
    move-object p0, v0

    :goto_34
    if-eqz p0, :cond_3a

    .line 62
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    :cond_3a
    return-object v0
.end method

.method public final getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dataType"

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decryptMultipleResult"

    const-string v3, "decryptMultipleData"

    if-nez v1, :cond_29

    .line 97
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4c

    .line 101
    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4c

    .line 105
    :cond_29
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v3, "paramList0"

    .line 106
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 111
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 112
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const-string/jumbo p1, "paramList1"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public final getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const-string p0, "dataType"

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "encryptResult"

    const-string v2, "encryptData"

    if-nez p0, :cond_20

    .line 27
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 29
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    .line 30
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    goto :goto_34

    .line 33
    :cond_20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_33

    .line 35
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    .line 36
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    goto :goto_34

    :cond_33
    move-object p0, v0

    :goto_34
    if-eqz p0, :cond_3a

    .line 40
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    :cond_3a
    return-object v0
.end method

.method public final getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dataType"

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "encryptMultipleResult"

    const-string v3, "encryptMultipleData"

    if-nez v1, :cond_29

    .line 70
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4c

    .line 74
    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 75
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4c

    .line 78
    :cond_29
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v3, "paramList0"

    .line 79
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v3, 0x1

    .line 82
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 84
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const-string/jumbo p1, "paramList1"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public final mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 122
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_7e

    if-eqz p2, :cond_7e

    .line 124
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_12

    goto :goto_7e

    .line 129
    :cond_12
    :try_start_12
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 134
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    if-eqz p3, :cond_38

    .line 135
    invoke-static {v5}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v5

    goto :goto_3c

    :cond_38
    invoke-static {v5}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v5

    :goto_3c
    if-nez v5, :cond_63

    const-string p0, "ExecStringCrypto"

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mergeEncryptedData "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4f

    const-string p2, "en"

    goto :goto_51

    :cond_4f
    const-string p2, "de"

    :goto_51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "crypt failed !!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v0

    .line 142
    :cond_63
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, v4

    goto :goto_1d

    .line 147
    :cond_70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_74} :catch_7a

    .line 153
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catch_7a
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7e
    :goto_7e
    return-object v0
.end method
