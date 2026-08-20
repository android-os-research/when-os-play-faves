.class final Lcom/samsung/android/authenticator/FingerprintTrustedApplication;
.super Ljava/lang/Object;
.source "FingerprintTrustedApplication.java"

# interfaces
.implements Lcom/samsung/android/authenticator/TrustedApplication;


# static fields
.field static final blacklist GET_AUTH_RESULT_COMMAND:[B

.field static final blacklist SET_AUTH_CHALLENGE_COMMAND:[B

.field private static final blacklist SUCCESS:[B

.field private static final blacklist TAG:Ljava/lang/String; = "FTA"


# instance fields
.field private final blacklist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 28
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    .line 29
    new-array v1, v0, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    .line 31
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist execute([B)[B
    .registers 6
    .param p1, "command"    # [B

    .line 46
    const/4 v0, 0x0

    const-string v1, "FTA"

    if-eqz p1, :cond_2f

    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    goto :goto_2f

    .line 51
    :cond_a
    new-array v0, v0, [B

    .line 52
    .local v0, "result":[B
    sget-object v2, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SET_AUTH_CHALLENGE_COMMAND:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 53
    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->setChallenge([B)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 54
    sget-object v0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->SUCCESS:[B

    goto :goto_29

    .line 56
    :cond_1d
    sget-object v2, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->GET_AUTH_RESULT_COMMAND:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 57
    invoke-static {p1}, Lcom/samsung/android/authenticator/AuthenticatorService;->getWrappedObject([B)[B

    move-result-object v0

    .line 59
    :cond_29
    :goto_29
    const-string v2, "command is not supported"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 47
    .end local v0    # "result":[B
    :cond_2f
    :goto_2f
    const-string v2, "command is invalid"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-array v0, v0, [B

    return-object v0
.end method

.method public blacklist getHandle()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist load()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/samsung/android/authenticator/FingerprintTrustedApplication;->mHandle:I

    return v0
.end method

.method public blacklist unload()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method
