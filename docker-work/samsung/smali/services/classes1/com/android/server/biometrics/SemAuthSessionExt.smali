.class public Lcom/android/server/biometrics/SemAuthSessionExt;
.super Ljava/lang/Object;
.source "SemAuthSessionExt.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricService/AuthSession"


# instance fields
.field public mAuthenticatedBiometricID:I

.field public mChallengeToken:[B

.field public final mContext:Landroid/content/Context;

.field public final mEffectiveUserId:I

.field public final mExtraData:Landroid/os/Bundle;

.field public mSysUiReceiver:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

.field public mSysUiSessionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Landroid/hardware/biometrics/IBiometricSysuiReceiver;)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mExtraData:Landroid/os/Bundle;

    .line 37
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mEffectiveUserId:I

    .line 38
    instance-of p1, p5, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    if-eqz p1, :cond_3b

    .line 39
    check-cast p5, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    iput-object p5, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiReceiver:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    .line 40
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiReceiver:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    .line 41
    invoke-virtual {p5}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->getSysUiListener()Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    move-result-object p5

    .line 40
    invoke-virtual {p1, p3, p2, p5}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    .line 42
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    invoke-virtual {p1, p0, p4}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpStart(ILjava/lang/String;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public destroy(II)V
    .registers 5

    .line 63
    iget v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    if-eqz v0, :cond_16

    .line 64
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 65
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpStop(III)V

    :cond_16
    return-void
.end method

.method public getAuthenticatedBiometricID()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mAuthenticatedBiometricID:I

    return p0
.end method

.method public getChallengeToken()[B
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mChallengeToken:[B

    return-object p0
.end method

.method public hideAuthenticationDialog()V
    .registers 3

    .line 97
    iget v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    if-eqz v0, :cond_e

    .line 98
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->hide(III)V

    :cond_e
    return-void
.end method

.method public onBiometricAuthenticated(IZLjava/lang/String;)V
    .registers 5

    .line 115
    iget v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    if-eqz v0, :cond_d

    .line 116
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onAuthenticated(IIZLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onBiometricError(III)V
    .registers 11

    .line 103
    iget v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    if-eqz v0, :cond_11

    .line 104
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onBiometricError(IIIILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onBiometricHelp(IIILjava/lang/String;)V
    .registers 12

    .line 109
    iget v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    if-eqz v0, :cond_11

    .line 110
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onBiometricHelp(IIIILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public setAuthenticatedBiometricID(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mAuthenticatedBiometricID:I

    return-void
.end method

.method public setChallengeToken([B)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mChallengeToken:[B

    return-void
.end method

.method public final setManagedProfileInfo(ILandroid/hardware/biometrics/PromptInfo;)V
    .registers 6

    .line 121
    iget-object p2, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/server/biometrics/Utils;->isWorkProfile(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 123
    :try_start_8
    iget-object p2, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 124
    iget-object v0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mExtraData:Landroid/os/Bundle;

    const-string v1, "MANAGED_PROFILE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object p0, p0, Lcom/android/server/biometrics/SemAuthSessionExt;->mExtraData:Landroid/os/Bundle;

    const-string v0, "MANAGED_PROFILE_COLOR"

    .line 126
    invoke-virtual {p2, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result p1

    .line 125
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_42

    :catch_26
    move-exception p0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setManagedProfileInfo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZILjava/lang/String;J)V
    .registers 21

    move-object v0, p0

    move-object v1, p2

    if-eqz v1, :cond_21

    .line 73
    array-length v2, v1

    if-lez v2, :cond_21

    .line 75
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_b
    if-ge v4, v2, :cond_13

    aget v6, v1, v4

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 78
    :cond_13
    iget-object v2, v0, Lcom/android/server/biometrics/SemAuthSessionExt;->mExtraData:Landroid/os/Bundle;

    const-string v4, "KEY_AVAILABILITY_BIOMETRIC"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    aget v1, v1, v3

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->omeBiometricAuthenticatorModalityToOemSysUiType(I)I

    move-result v1

    goto :goto_26

    :cond_21
    if-eqz p3, :cond_46

    const v1, 0x8000

    :goto_26
    move/from16 v2, p5

    move v4, v1

    move-object v1, p1

    .line 89
    invoke-virtual {p0, v2, p1}, Lcom/android/server/biometrics/SemAuthSessionExt;->setManagedProfileInfo(ILandroid/hardware/biometrics/PromptInfo;)V

    .line 90
    iget v2, v0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    if-eqz v2, :cond_45

    .line 91
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v2

    iget v3, v0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiSessionId:I

    iget-object v5, v0, Lcom/android/server/biometrics/SemAuthSessionExt;->mExtraData:Landroid/os/Bundle;

    iget v7, v0, Lcom/android/server/biometrics/SemAuthSessionExt;->mEffectiveUserId:I

    move/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object v11, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    :cond_45
    return-void

    :cond_46
    const-string v1, "BiometricService/AuthSession"

    const-string/jumbo v2, "showAuthenticationDialog: Unknown prompt type"

    .line 84
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, v0, Lcom/android/server/biometrics/SemAuthSessionExt;->mSysUiReceiver:Lcom/android/server/biometrics/SemBiometricSysUiReceiver;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->onSysUiError(II)V

    return-void
.end method
