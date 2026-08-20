.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# instance fields
.field public hash:[B

.field public type:I


# direct methods
.method public constructor <init>([BI)V
    .registers 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_11

    if-eqz p1, :cond_9

    goto :goto_13

    .line 142
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty hash for CredentialHash"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    if-nez p1, :cond_18

    .line 150
    :goto_13
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 151
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    return-void

    .line 146
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "None type CredentialHash should not have hash"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>([BILcom/android/server/locksettings/LockSettingsStorage$CredentialHash-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-void
.end method

.method public static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 158
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v0

    .line 156
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad type for CredentialHash"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .registers 3

    .line 162
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v0
.end method
