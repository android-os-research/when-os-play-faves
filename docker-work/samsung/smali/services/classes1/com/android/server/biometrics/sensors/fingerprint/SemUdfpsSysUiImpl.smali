.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
.super Ljava/lang/Object;
.source "SemUdfpsSysUiImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;
    }
.end annotation


# static fields
.field public static final DB_UDFPS_HIDE_AUTH_GUIDE_LAYER_PACKAGES:Ljava/lang/String; = "config_biometric_udfps_flag_hide_auth_guide_layer_packages"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Biometrics/SemUdfpsSysUiImpl"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCustomIconAttribute:Landroid/os/Bundle;

.field public final mHashCode:I

.field public mHideAuthenticationGuide:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIsAuthenticated:Z

.field public mIsBiometricPrompt:Z

.field public mIsRequireTouchBlock:Z

.field public final mPackageName:Ljava/lang/String;

.field public mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

.field public mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSysUiSessionId:I

.field public mSysUiType:I

.field public final mToken:Landroid/os/IBinder;

.field public mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sNE0JnyG36tdo8zbfOZOXfcRI1A(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->lambda$onDismissed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wSgcfzGn6TGhe5jkpFWlQ3tyz2g(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->lambda$onError$1(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mToken:Landroid/os/IBinder;

    .line 66
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 68
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 69
    iput-boolean p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    return-void
.end method

.method private synthetic lambda$onDismissed$0()V
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    if-eqz p0, :cond_7

    .line 78
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;->onSysUiDismissed()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onError$1(II)V
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    if-eqz p0, :cond_7

    .line 87
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;->onSysUiError(II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final canHideAuthenticationGuideLayerWithoutFlag()Z
    .registers 7

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->getAllowedPackagesForHideAuthenticationGuideLayer()[Ljava/lang/String;

    move-result-object v0

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 116
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    return v2
.end method

.method public checkGuideLayerAndTouchBlock(I)V
    .registers 5

    .line 104
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    const/4 v1, 0x1

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->canHideAuthenticationGuideLayerWithoutFlag()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Biometrics/SemUdfpsSysUiImpl"

    const-string v2, "ClientExtImpl: specific allowlist attr"

    .line 105
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 108
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    if-eqz v0, :cond_27

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 110
    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->inMultiWindowMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsRequireTouchBlock:Z

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 175
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    return-void
.end method

.method public final getAllowedPackagesForHideAuthenticationGuideLayer()[Ljava/lang/String;
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_biometric_udfps_flag_hide_auth_guide_layer_packages"

    const/4 v2, 0x0

    .line 125
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ";"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_23

    .line 131
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_22

    goto :goto_23

    :cond_22
    return-object v0

    .line 132
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070089

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSysUiType()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    if-nez v0, :cond_d

    .line 150
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    .line 151
    :goto_b
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 153
    :cond_d
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    return p0
.end method

.method public handleOnAcquired(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_21

    .line 190
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    const/16 v1, 0xca

    if-eqz p1, :cond_10

    .line 191
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    goto :goto_17

    .line 194
    :cond_10
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {p1, v2, v1, p2, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    :goto_17
    const/16 p1, 0x2712

    if-ne p2, p1, :cond_2a

    .line 198
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->onCaptureStarted()V

    goto :goto_2a

    .line 201
    :cond_21
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v1, 0xc9

    invoke-virtual {p2, p0, v1, p1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public handleOnAuthenticated(Z)V
    .registers 5

    .line 179
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsAuthenticated:Z

    if-eqz v0, :cond_5

    return-void

    .line 182
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsAuthenticated:Z

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onAuthenticated(IIZLjava/lang/String;)V

    return-void
.end method

.method public handleOnError(II)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_f

    .line 208
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v2, 0xcc

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    goto :goto_18

    .line 211
    :cond_f
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v2, 0xcb

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    .line 214
    :goto_18
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p1, :cond_26

    .line 215
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->hideLightSource()V

    .line 216
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    :cond_26
    return-void
.end method

.method public handleOnPause()V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v1, 0x70

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public handleOnResume()V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/16 v1, 0x71

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public final hideLightSource()V
    .registers 2

    .line 165
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p0, :cond_11

    .line 166
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz p0, :cond_11

    .line 167
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p0

    const-string v0, "0"

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->setHwLightMode(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onDismissed(I[B)V
    .registers 3

    .line 76
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(II)V
    .registers 5

    .line 85
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCustomIconAttribute(Landroid/os/Bundle;I)V
    .registers 7

    const-string v0, "EXTRA_KEY_ICON_COLOR"

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    if-nez v1, :cond_14

    .line 232
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_33

    .line 234
    :cond_14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 235
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    const-string/jumbo p1, "sem_privileged_attr"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_33
    return-void
.end method

.method public setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 98
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    .line 99
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    return-void
.end method

.method public setSysUiType(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    return-void
.end method

.method public start()V
    .registers 12

    .line 140
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    if-nez v0, :cond_19

    .line 141
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->getSysUiType()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsRequireTouchBlock:Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    .line 145
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 157
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    if-nez v0, :cond_c

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->hide(III)V

    .line 160
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->hideLightSource()V

    return-void
.end method
