.class public Lcom/android/server/connectivity/VpnIkev2Utils;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;,
        Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;,
        Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VpnIkev2Utils"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ipsec/ike/ChildSessionParams;"
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 125
    invoke-static {p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->getChildSaProposals(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 126
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_d

    .line 129
    :cond_1d
    sget p0, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 130
    sget p0, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 131
    sget p0, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 132
    sget p0, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public static buildIkeSessionParams(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 6

    .line 103
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v1

    .line 106
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-direct {v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 114
    invoke-static {}, Lcom/android/server/connectivity/VpnIkev2Utils;->getIkeSaProposals()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 115
    invoke-virtual {p0, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_34

    .line 118
    :cond_44
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public static getChildSaProposals(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x100

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 225
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 226
    new-instance v6, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 230
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0xc

    const/16 v9, 0xd

    if-eqz v7, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v10, "rfc3686(ctr(aes))"

    .line 231
    invoke-interface {p0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 232
    invoke-virtual {v6, v9, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_56
    const-string v9, "cbc(aes)"

    .line 234
    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 235
    invoke-virtual {v6, v8, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    goto :goto_36

    :cond_62
    const-string/jumbo v1, "hmac(sha512)"

    .line 241
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const/16 v1, 0xe

    .line 242
    invoke-virtual {v6, v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_70
    const-string/jumbo v1, "hmac(sha384)"

    .line 244
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 245
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_7c
    const-string/jumbo v1, "hmac(sha256)"

    .line 247
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 248
    invoke-virtual {v6, v8}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_88
    const-string/jumbo v1, "xcbc(aes)"

    .line 250
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    const/4 v1, 0x5

    .line 251
    invoke-virtual {v6, v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_95
    const-string v1, "cmac(aes)"

    .line 253
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const/16 v1, 0x8

    .line 254
    invoke-virtual {v6, v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 257
    :cond_a2
    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 260
    sget-object v1, Lcom/android/server/connectivity/VpnIkev2Utils;->TAG:Ljava/lang/String;

    const-string v6, "Missing integrity algorithm when buildling Child SA proposal"

    invoke-static {v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 262
    :cond_b8
    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_bf
    :goto_bf
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 268
    new-instance v1, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    const-string/jumbo v6, "rfc7539esp(chacha20,poly1305)"

    .line 270
    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    const/16 v6, 0x1c

    .line 271
    invoke-virtual {v1, v6, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_d8
    const-string/jumbo v4, "rfc4106(gcm(aes))"

    .line 274
    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_102

    const/16 p0, 0x14

    .line 275
    invoke-virtual {v1, p0, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    const/16 v4, 0x13

    .line 277
    invoke-virtual {v1, v4, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    const/16 v6, 0x12

    .line 279
    invoke-virtual {v1, v6, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 280
    invoke-virtual {v1, p0, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 282
    invoke-virtual {v1, v4, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 284
    invoke-virtual {v1, v6, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 285
    invoke-virtual {v1, p0, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 287
    invoke-virtual {v1, v4, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 289
    invoke-virtual {v1, v6, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 292
    :cond_102
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_109
    return-object v0
.end method

.method public static getIkeSaProposals()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v1, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    const/16 v2, 0xd

    const/16 v3, 0x100

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v4, 0xc

    .line 169
    invoke-virtual {v1, v4, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v5, 0xc0

    .line 170
    invoke-virtual {v1, v2, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 171
    invoke-virtual {v1, v4, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v6, 0x80

    .line 172
    invoke-virtual {v1, v2, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 173
    invoke-virtual {v1, v4, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v7, 0xe

    .line 176
    invoke-virtual {v1, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 177
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 178
    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v2, 0x5

    .line 179
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v4, 0x8

    .line 180
    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 183
    new-instance v8, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    .line 184
    invoke-virtual {v8, v9, v10}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x14

    .line 185
    invoke-virtual {v8, v9, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v11, 0x13

    .line 186
    invoke-virtual {v8, v11, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v12, 0x12

    .line 187
    invoke-virtual {v8, v12, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 188
    invoke-virtual {v8, v9, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 189
    invoke-virtual {v8, v11, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 190
    invoke-virtual {v8, v12, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 191
    invoke-virtual {v8, v9, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 192
    invoke-virtual {v8, v11, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 193
    invoke-virtual {v8, v12, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v3, 0x2

    new-array v5, v3, [Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    aput-object v1, v5, v10

    const/4 v6, 0x1

    aput-object v8, v5, v6

    .line 196
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x10

    .line 197
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x1f

    .line 200
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0xf

    .line 202
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 203
    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x7

    .line 204
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x6

    .line 205
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 206
    invoke-virtual {v6, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x4

    .line 207
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 208
    invoke-virtual {v6, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 209
    invoke-virtual {v6, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    goto :goto_76

    .line 212
    :cond_aa
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 469
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 471
    new-instance v2, Lcom/android/net/module/util/IpRange;

    iget-object v3, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v1}, Lcom/android/net/module/util/IpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v2}, Lcom/android/net/module/util/IpRange;->asIpPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 472
    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3d
    return-object v0
.end method

.method public static parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;
    .registers 4

    const-string v0, "@"

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "@#"

    .line 429
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1f

    .line 431
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 432
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v0

    :cond_1f
    const-string v1, "@@"

    .line 433
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 435
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 436
    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 438
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 441
    :cond_42
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 443
    :cond_48
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 444
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 445
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_5e

    .line 447
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    return-object v0

    .line 448
    :cond_5e
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_6a

    .line 450
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    return-object v0

    .line 452
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IP version not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    const-string v0, ":"

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 457
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v0

    .line 460
    :cond_84
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 5

    .line 139
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    .line 152
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUserCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getRsaPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    .line 151
    invoke-virtual {p1, v0, v1, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_4a

    .line 157
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown auth method set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_26
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPresharedKey()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_4a

    .line 141
    :cond_2e
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 143
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    :goto_4a
    return-void
.end method
