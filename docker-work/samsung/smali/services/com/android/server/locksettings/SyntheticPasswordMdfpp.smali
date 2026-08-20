.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;,
        Lcom/android/server/locksettings/SyntheticPasswordMdfpp$SecureMode;
    }
.end annotation


# static fields
.field public static final AES256_KEY_LENGTH:I = 0x20

.field public static final CONTEXT_AAD:Ljava/lang/String; = "ForAuthenticationData"

.field public static final CONTEXT_APP:Ljava/lang/String; = "ForApplicationId"

.field public static final CONTEXT_AUTH:Ljava/lang/String; = "ForUserAuthentication"

.field public static final CONTEXT_FS:Ljava/lang/String; = "ForFileSystem"

.field public static final CONTEXT_GK:Ljava/lang/String; = "ForGateKeeper"

.field public static final CONTEXT_KS:Ljava/lang/String; = "ForKeyStore"

.field public static final CONTEXT_RST:Ljava/lang/String; = "ForResetPasswordToken"

.field public static final CONTEXT_SDP:Ljava/lang/String; = "ForSdpMasterKey"

.field public static final DEFAULT_ITERATION_CNT:I = 0x4000

.field public static final DEFAULT_KEY_LENGTH:I = 0x20

.field public static final LABEL_KEK:Ljava/lang/String; = "KeyEncryptionKey"

.field public static final MAX_CONTEXT_SIZE:I = 0x40

.field public static final MAX_LABEL_SIZE:I = 0x20

.field public static final SMK_VERSION_1:I = 0x1

.field public static final SMK_VERSION_KEY:Ljava/lang/String; = "smk_ver"

.field public static final SMK_VERSION_LATEST:I = 0x1

.field public static final SMK_VERSION_X:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SyntheticPasswordMdfpp"

.field public static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordMdfpp_SDP"

.field public static final mCredentialTypeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mSecureModeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheCredentialType(II)V
    .registers 3

    .line 178
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 179
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static cacheSecureMode(II)V
    .registers 3

    .line 166
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 167
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static deleteCredentialType(I)V
    .registers 2

    .line 195
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 197
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static deleteSecureMode(I)V
    .registers 2

    .line 172
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 173
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 174
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static deriveResetTokenForDualDAR([B)[B
    .registers 3

    if-eqz p0, :cond_16

    .line 245
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_16

    :cond_6
    const-string v0, "KeyEncryptionKey"

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "ForResetPasswordToken"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->doSp800Derivation([B[B[B)[B

    move-result-object p0

    :cond_16
    :goto_16
    return-object p0
.end method

.method public static doSp800Derivation([B[B[B)[B
    .registers 4

    .line 252
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateAAD([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForAuthenticationData"

    .line 221
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateAppId([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForApplicationId"

    .line 217
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateFileSystemKey([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForFileSystem"

    .line 235
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateGatekeeperPassword([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForGateKeeper"

    .line 230
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateGkInput([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForUserAuthentication"

    .line 213
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateKeystorePassword([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForKeyStore"

    .line 225
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSdpMasterKey([BI)[B
    .registers 4

    const-string v0, "KeyEncryptionKey"

    const-string v1, "ForSdpMasterKey"

    .line 240
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalise([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCredentialType(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mCredentialTypeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 186
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 190
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 188
    :cond_11
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty credential type for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_28
    move-exception p0

    .line 191
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static getSecureMode(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->mSecureModeCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 157
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 161
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 159
    :cond_11
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty secure mode for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_28
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static removeUser(I)V
    .registers 1

    .line 208
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteSecureMode(I)V

    .line 209
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deleteCredentialType(I)V

    return-void
.end method

.method public static validateCredentialType(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    if-eq p0, v0, :cond_e

    const/4 v1, -0x1

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method
