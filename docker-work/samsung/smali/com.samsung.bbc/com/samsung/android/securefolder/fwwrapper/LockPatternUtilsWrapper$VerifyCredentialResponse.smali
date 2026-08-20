.class public Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyCredentialResponse"
.end annotation


# instance fields
.field private final mGatekeeperHAT:[B

.field private final mGatekeeperPasswordHandle:J

.field private final mResponseCode:I

.field private final mTimeout:I


# direct methods
.method public constructor <init>(II[BJ)V
    .registers 6

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mResponseCode:I

    .line 157
    iput p2, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mTimeout:I

    .line 158
    iput-object p3, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperHAT:[B

    .line 159
    iput-wide p4, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-void
.end method


# virtual methods
.method public containsGatekeeperPasswordHandle()Z
    .registers 5

    .line 171
    iget-wide v0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getGatekeeperHAT()[B
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperHAT:[B

    return-object p0
.end method

.method public getGatekeeperPasswordHandle()J
    .registers 3

    .line 167
    iget-wide v0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-wide v0
.end method

.method public getResponseCode()I
    .registers 1

    .line 179
    iget p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mResponseCode:I

    return p0
.end method

.method public getTimeout()I
    .registers 1

    .line 175
    iget p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mTimeout:I

    return p0
.end method

.method public isMatched()Z
    .registers 1

    .line 183
    iget p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mResponseCode:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", GK HAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperHAT:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", GK PW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
