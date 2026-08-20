.class public final Lcom/android/server/knox/dar/SecureUtil;
.super Ljava/lang/Object;
.source "SecureUtil.java"


# static fields
.field public static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final ORDER_BASE:I = 0x1

.field public static final ORDER_EPHEM_DRIVEN:I = 0x4

.field public static final ORDER_MANAGED_DRIVEN:I = 0x8

.field public static final ORDER_PASSWORD_DRIVEN:I = 0x1

.field public static final ORDER_SCORE_DRIVEN:I = 0x10

.field public static final ORDER_TOKEN_DRIVEN:I = 0x2

.field public static final RESET_TOKEN:Ljava/lang/String; = "SdpResetToken"

.field public static final SECURE_DATA_KEY:Ljava/lang/String; = "SdpSecureDataKey"

.field public static final TOKEN_HANDLE:Ljava/lang/String; = "SdpTokenHandle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_6

    const-string/jumbo p0, "null"

    goto :goto_51

    .line 107
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    :goto_a
    if-ge v1, v0, :cond_50

    aget-byte v3, p0, v1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v3, 0xf

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_50
    move-object p0, v2

    .line 113
    :goto_51
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clear(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static clear([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 67
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static varargs clearAll([Ljava/lang/Object;)V
    .registers 5

    if-eqz p0, :cond_22

    .line 49
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_22

    .line 53
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    aget-object v2, p0, v1

    .line 54
    instance-of v3, v2, [B

    if-eqz v3, :cond_16

    .line 55
    check-cast v2, [B

    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    goto :goto_1f

    .line 58
    :cond_16
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 59
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->clear(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    :goto_22
    return-void
.end method

.method public static copy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateRandomBytes(I)[B
    .registers 2

    .line 88
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs isAnyoneEmptyHere([Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 37
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_19

    .line 40
    :cond_7
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_18

    aget-object v4, p0, v3

    .line 41
    invoke-static {v4}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return v0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    return v2

    :cond_19
    :goto_19
    return v0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_1b

    .line 31
    instance-of v0, p0, [B

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, [B

    array-length v0, v0

    if-eqz v0, :cond_1b

    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_19

    check-cast p0, Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isFailed(Ljava/lang/Object;)Z
    .registers 2

    .line 26
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_d
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    check-cast p0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1b

    :cond_19
    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static record(Z)Z
    .registers 4

    if-nez p0, :cond_29

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unexpected failure with a process [ UID : %d, PID : %d ]"

    .line 93
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    :cond_29
    return p0
.end method

.method public static safe(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_6
    return-object p0
.end method
