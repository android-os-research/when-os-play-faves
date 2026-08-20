.class public Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;,
        Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnCheckCallback;,
        Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;,
        Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_STATE_OFF:I = 0x0

.field public static final BIOMETRIC_STATE_ON:I = 0x1

.field public static final BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final BIOMETRIC_TYPE_NONE:I = 0x0

.field public static final CREDENTIAL_TYPE_NONE:I = -0x1

.field public static final CREDENTIAL_TYPE_PASSWORD:I = 0x4

.field public static final CREDENTIAL_TYPE_PASSWORD_OR_PIN:I = 0x2

.field public static final CREDENTIAL_TYPE_PATTERN:I = 0x1

.field public static final CREDENTIAL_TYPE_PIN:I = 0x3

.field public static final VERIFY_CREDENTIAL_RESPONSE_ERROR:I = -0x1

.field public static final VERIFY_CREDENTIAL_RESPONSE_OK:I = 0x0

.field public static final VERIFY_CREDENTIAL_RESPONSE_RETRY:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$2bOTtYiw-dW64204EFVzWQinBI4(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->onChecked(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$tMCZ7Aw6e_l2zLE58MAN-HJrGuc(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->lambda$wrapOnVerifyCallback$0(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xDSAa0EztT98FhXjV0yvOjyjlaA(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToPattern([B)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static checkCredential(Landroid/content/Context;Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;ILcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnCheckCallback;)Landroid/os/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;",
            "I",
            "Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->createLockscreenCredential(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    if-eqz p3, :cond_10

    .line 48
    invoke-static {p3}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->wrapOnCheckCallback(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnCheckCallback;)Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    move-result-object p1

    goto :goto_1b

    :cond_10
    new-instance p1, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;

    invoke-direct {p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;-><init>()V

    new-instance p3, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;)V

    move-object p1, p3

    .line 47
    :goto_1b
    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private static createLockscreenCredential(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 3

    .line 101
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->-$$Nest$fgettype(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    const/4 p0, 0x0

    goto :goto_31

    .line 106
    :cond_12
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->-$$Nest$fgetpasswordOrPin(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    goto :goto_31

    .line 109
    :cond_1b
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->-$$Nest$fgetpasswordOrPin(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    goto :goto_31

    .line 112
    :cond_24
    invoke-static {p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;->-$$Nest$fgetpattern(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    goto :goto_31

    .line 103
    :cond_2d
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method public static getBiometricState(Landroid/content/Context;II)I
    .registers 4

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p0

    return p0
.end method

.method public static isTactileFeedbackEnabled(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isVisiblePatternDisabledByMDM(Landroid/content/Context;)Z
    .registers 2

    .line 90
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result p0

    return p0
.end method

.method public static isVisiblePatternEnabled(Landroid/content/Context;I)Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$wrapOnVerifyCallback$0(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 10

    .line 123
    new-instance v6, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;-><init>(II[BJ)V

    .line 125
    invoke-interface {p0, v6, p2}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;->onVerified(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$VerifyCredentialResponse;I)V

    return-void
.end method

.method private onChecked(ZI)V
    .registers 3

    return-void
.end method

.method private onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 3

    return-void
.end method

.method public static patternToByteArray(Ljava/util/List;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)[B"
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method public static setBiometricState(Landroid/content/Context;III)V
    .registers 5

    .line 80
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    return-void
.end method

.method public static setLockCredential(Landroid/content/Context;Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;I)Z
    .registers 5

    .line 61
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->createLockscreenCredential(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    .line 63
    invoke-static {p2}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->createLockscreenCredential(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 62
    invoke-virtual {v0, p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result p0

    return p0
.end method

.method public static setVisiblePatternEnabled(Landroid/content/Context;ZI)V
    .registers 4

    .line 75
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    return-void
.end method

.method public static verifyCredential(Landroid/content/Context;Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;ILcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;)Landroid/os/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;",
            "I",
            "Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->createLockscreenCredential(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$Credential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    if-eqz p3, :cond_10

    .line 56
    invoke-static {p3}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;->wrapOnVerifyCallback(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;)Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    move-result-object p1

    goto :goto_1b

    :cond_10
    new-instance p1, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;

    invoke-direct {p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;-><init>()V

    new-instance p3, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper;)V

    move-object p1, p3

    :goto_1b
    const/4 p3, 0x1

    .line 55
    invoke-static {v0, p0, p2, p3, p1}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private static wrapOnCheckCallback(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnCheckCallback;)Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .registers 2

    .line 118
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnCheckCallback;)V

    return-object v0
.end method

.method private static wrapOnVerifyCallback(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;)Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .registers 2

    .line 122
    new-instance v0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/securefolder/fwwrapper/LockPatternUtilsWrapper$OnVerifyCallback;)V

    return-object v0
.end method
