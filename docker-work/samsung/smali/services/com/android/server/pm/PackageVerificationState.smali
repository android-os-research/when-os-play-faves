.class public Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field public mExtendedTimeout:Z

.field public mExtendedTimeoutForSamsung:Z

.field public mIntegrityVerificationComplete:Z

.field public final mParams:Lcom/android/server/pm/VerificationParams;

.field public mRequiredVerificationComplete:Z

.field public mRequiredVerificationPassed:Z

.field public mRequiredVerifierUid:I

.field public mSamsungVerificationComplete:Z

.field public mSamsungVerificationPassed:Z

.field public mSamsungVerificationResponseAtTimeout:Lcom/android/server/pm/PackageVerificationResponse;

.field public mSamsungVerifierUid:I

.field public mSufficientVerificationComplete:Z

.field public mSufficientVerificationPassed:Z

.field public final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerificationParams;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/VerificationParams;

    .line 66
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 69
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutForSamsung:Z

    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    return-void
.end method


# virtual methods
.method public addSufficientVerifier(I)V
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public areAllVerificationsComplete()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public extendTimeout()V
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    :cond_7
    return-void
.end method

.method public extendTimeoutForSamsung()V
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutForSamsung:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutForSamsung:Z

    :cond_7
    return-void
.end method

.method public getSamsungVerificationResponseAtTimeout()Lcom/android/server/pm/PackageVerificationResponse;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationResponseAtTimeout:Lcom/android/server/pm/PackageVerificationResponse;

    return-object p0
.end method

.method public getVerificationParams()Lcom/android/server/pm/VerificationParams;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/VerificationParams;

    return-object p0
.end method

.method public isInstallAllowed()Z
    .registers 4

    .line 186
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 190
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    .line 191
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return p0

    .line 195
    :cond_d
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_17

    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationPassed:Z

    if-nez p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public isIntegrityVerificationComplete()Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    return p0
.end method

.method public isRequiredVerificationComplete()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 257
    :cond_10
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return p0
.end method

.method public isSamsungVerificationComplete()Z
    .registers 3

    .line 261
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationComplete:Z

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public isSamsungVerifier(I)Z
    .registers 2

    .line 237
    iget p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isVerificationComplete()Z
    .registers 4

    .line 162
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 167
    :cond_6
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationComplete:Z

    if-nez v0, :cond_10

    return v1

    .line 172
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 p0, 0x1

    return p0

    .line 176
    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return p0
.end method

.method public setIntegrityVerificationResult(I)V
    .registers 2

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    return-void
.end method

.method public setRequiredVerifierUid(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    return-void
.end method

.method public setSamsungVerificationResponseAtTimeout(Lcom/android/server/pm/PackageVerificationResponse;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationResponseAtTimeout:Lcom/android/server/pm/PackageVerificationResponse;

    return-void
.end method

.method public setSamsungVerifierUid(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    return-void
.end method

.method public setVerifierResponse(II)Z
    .registers 7

    .line 108
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_18

    .line 109
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-eq p2, v3, :cond_15

    if-eq p2, v1, :cond_10

    .line 118
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_17

    .line 112
    :cond_10
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 115
    :cond_15
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    :goto_17
    return v3

    .line 122
    :cond_18
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerifierUid:I

    if-ne p1, v0, :cond_2d

    .line 123
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationComplete:Z

    if-eq p2, v3, :cond_2a

    if-eq p2, v1, :cond_25

    .line 132
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationPassed:Z

    goto :goto_2c

    .line 126
    :cond_25
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 129
    :cond_2a
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mSamsungVerificationPassed:Z

    :goto_2c
    return v3

    .line 137
    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-ne p2, v3, :cond_3b

    .line 139
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 143
    :cond_3b
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 144
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_4a

    .line 145
    iput-boolean v3, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    :cond_4a
    return v3

    :cond_4b
    return v2
.end method

.method public timeoutExtended()Z
    .registers 1

    .line 216
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return p0
.end method

.method public timeoutExtendedForSamsung()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutForSamsung:Z

    return p0
.end method
