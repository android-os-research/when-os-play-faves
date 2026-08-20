.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final mKeyClaimant:[B

.field public final mLskfHash:[B

.field public final mSessionId:Ljava/lang/String;

.field public final mVaultParams:[B


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .registers 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    .line 150
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    .line 152
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 191
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public getKeyClaimant()[B
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    return-object p0
.end method

.method public getLskfHash()[B
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    return-object p0
.end method

.method public getVaultParams()[B
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-object p0
.end method
