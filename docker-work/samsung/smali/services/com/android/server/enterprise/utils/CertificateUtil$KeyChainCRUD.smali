.class public Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainCRUD"
.end annotation


# instance fields
.field public mConnection:Landroid/security/KeyChain$KeyChainConnection;

.field public mContext:Landroid/content/Context;

.field public mService:Landroid/security/IKeyChainService;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 132
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    .line 133
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 134
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    .line 138
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)[B
    .registers 6

    .line 312
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    invoke-direct {v0, p0, p4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 313
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0

    .line 314
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return-object p0
.end method

.method public static listAliases(Landroid/content/Context;Ljava/lang/String;II)[Ljava/lang/String;
    .registers 5

    .line 235
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    invoke-direct {v0, p0, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 236
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return-object p0
.end method


# virtual methods
.method public final connect()Z
    .registers 6

    const-string v0, "CertificateUtil"

    .line 147
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5c

    const/4 v1, 0x0

    .line 149
    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 151
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_38
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_5c

    .line 157
    :catch_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to KeyChainService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v1

    :catch_38
    move-exception v2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error binding KeyChain. Is KeyChainService running for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v1

    :cond_5c
    :goto_5c
    const/4 p0, 0x1

    return p0
.end method

.method public contains(Ljava/lang/String;I)Z
    .registers 6

    .line 257
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting contains operation"

    .line 258
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 263
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in KeyChainService.contains for alias "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public deleteEntry(Ljava/lang/String;I)Z
    .registers 6

    .line 198
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting deleteEntry operation"

    .line 199
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 204
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeyChainService;->deleteEntry(Ljava/lang/String;I)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in KeyChainService.deleteEntry for alias "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public disconnect()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz v0, :cond_14

    .line 168
    :try_start_4
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string v0, "CertificateUtil"

    const-string v1, "Error disconnecting from KeyChain!"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    .line 173
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    :cond_14
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 7

    .line 242
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting get operation"

    .line 243
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 248
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1, p2, p3}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error in KeyChainService.getCertificateSystem for alias "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public installCaCertificate([B)Ljava/lang/String;
    .registers 5

    .line 319
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting installCaCertificate operation"

    .line 320
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 325
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const-string p1, "Error in KeyChainService.installCaCertificate"

    .line 327
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public isCertificateEntry(Ljava/lang/String;I)Z
    .registers 6

    .line 288
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting isCertificateEntry operation."

    .line 289
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 294
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeyChainService;->isCertificateEntry(Ljava/lang/String;I)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in KeyChainService.isCertificateEntry for alias "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isConnected()Z
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public listAliases(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 212
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting listAliases operation"

    .line 213
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 218
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeyChainService;->listAliases(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in KeyChainService.listAliases for keystore "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public put([B[B[BLjava/lang/String;I)Z
    .registers 15

    .line 179
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting put operation."

    .line 180
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 185
    :cond_f
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeyChainService;->installKeyPair([B[B[BLjava/lang/String;I)Z

    move-result p2

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    if-ne p2, p1, :cond_24

    .line 188
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p4, p1}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_25

    :cond_24
    return p2

    :catch_25
    move-exception p0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error in KeyChainService.installKeyPair for alias "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public updateKeyPair(Ljava/lang/String;[B[BI)Z
    .registers 8

    .line 272
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->connect()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CertificateUtil"

    if-nez v0, :cond_f

    const-string p0, "Aborting updateKeyPair operation."

    .line 273
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 278
    :cond_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->mService:Landroid/security/IKeyChainService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/security/IKeyChainService;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error in KeyChainService.updateKeyPair for alias "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
