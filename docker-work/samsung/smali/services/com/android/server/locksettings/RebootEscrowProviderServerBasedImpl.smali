.class public Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;
.super Ljava/lang/Object;
.source "RebootEscrowProviderServerBasedImpl.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;
    }
.end annotation


# static fields
.field public static final DEFAULT_SERVER_BLOB_LIFETIME_IN_MILLIS:J = 0x927c0L

.field public static final DEFAULT_SERVICE_TIMEOUT_IN_SECONDS:J = 0xaL

.field public static final TAG:Ljava/lang/String; = "RebootEscrowProviderServerBased"


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

.field public mServerBlob:[B

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .registers 4

    .line 88
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;-><init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 94
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    return-void
.end method


# virtual methods
.method public clearRebootEscrowKey()V
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrowServerBlob()V

    return-void
.end method

.method public getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    if-nez v0, :cond_c

    .line 136
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrowServerBlob()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    .line 139
    :cond_c
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrowServerBlob()V

    .line 140
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    const/4 v1, 0x0

    const-string v2, "RebootEscrowProviderServerBased"

    if-nez v0, :cond_1e

    const-string p0, "Failed to read reboot escrow server blob from storage"

    .line 141
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1e
    if-nez p1, :cond_26

    const-string p0, "Failed to decrypt the escrow key; decryption key from keystore is null."

    .line 145
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_26
    const-string v0, "Loaded reboot escrow server blob from storage"

    .line 150
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->unwrapServerBlob([BLjavax/crypto/SecretKey;)[B

    move-result-object p0

    if-nez p0, :cond_39

    const-string p0, "Decrypted reboot escrow key bytes should not be null"

    .line 154
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 156
    :cond_39
    array-length p1, p0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_54

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Decrypted reboot escrow key has incorrect size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 162
    :cond_54
    invoke-static {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->fromKeyBytes([B)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p0
    :try_end_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2b .. :try_end_58} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_58} :catch_59

    return-object p0

    :catch_59
    move-exception p0

    const-string p1, "Failed to decrypt the server blob "

    .line 164
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public hasRebootEscrowSupport()Z
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-static {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->-$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .registers 5

    const-string v0, "RebootEscrowProviderServerBased"

    .line 200
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrowServerBlob()V

    const/4 v1, 0x0

    .line 202
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKey;->getKeyBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->wrapEscrowKey([BLjavax/crypto/SecretKey;)[B

    move-result-object p1

    if-nez p1, :cond_18

    const-string p0, "Failed to encrypt the reboot escrow key"

    .line 204
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 207
    :cond_18
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrowServerBlob([B)V

    const-string p0, "Reboot escrow key encrypted and stored."

    .line 209
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_22} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_22} :catch_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_24

    const/4 p0, 0x1

    return p0

    :catch_24
    move-exception p0

    const-string p1, "Failed to encrypt the reboot escrow key "

    .line 212
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final unwrapServerBlob([BLjavax/crypto/SecretKey;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-static {v0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->-$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RebootEscrowProviderServerBased"

    if-nez v0, :cond_11

    const-string p0, "Had reboot escrow data for users, but resume on reboot server service is unavailable"

    .line 111
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 117
    :cond_11
    invoke-static {p2, p1}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    if-nez p1, :cond_1d

    const-string p0, "Decrypted server blob should not be null"

    .line 119
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 125
    :cond_1d
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    .line 126
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 127
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v1

    .line 126
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->unwrap([BJ)[B

    move-result-object p0

    .line 128
    invoke-virtual {v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->unbindService()V

    return-object p0
.end method

.method public final wrapEscrowKey([BLjavax/crypto/SecretKey;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-static {v0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->-$$Nest$mgetServiceConnection(Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, "RebootEscrowProviderServerBased"

    if-nez v0, :cond_11

    const-string p0, "Failed to encrypt the reboot escrow key: resume on reboot server service is unavailable"

    .line 178
    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 183
    :cond_11
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    .line 185
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 186
    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServerBlobLifetimeInMillis()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->getServiceTimeoutInSeconds()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p1

    .line 185
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->wrapBlob([BJJ)[B

    move-result-object p0

    .line 187
    invoke-virtual {v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->unbindService()V

    if-nez p0, :cond_37

    const-string p0, "Server encrypted reboot escrow key cannot be null"

    .line 190
    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 195
    :cond_37
    invoke-static {p2, p0}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0
.end method
