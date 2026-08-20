.class public Lcom/android/server/enterprise/security/PasswordPolicy;
.super Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;,
        Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;,
        Lcom/android/server/enterprise/security/PasswordPolicy$Injector;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_AUTHENTICATION_TYPES:[I

.field public static final CONTAINER_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final CONTAINER_CORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final FLAG_ADMIN_LOCK_STATE:I = 0x1

.field public static final FLAG_LICENSE_LOCK_STATE:I = 0x2

.field public static final PASSWORD_ISENFORCED:Ljava/lang/String; = "lockscreen.password_isenforced"

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field public static final TAG:Ljava/lang/String; = "PasswordPolicy"


# instance fields
.field public mActivationMonitor:Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;

.field public final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field public mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallersWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

.field public mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

.field public mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public final mLocalService:Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

.field public mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mService:Landroid/app/admin/IDevicePolicyManager;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mTelManager:Landroid/telephony/TelephonyManager;

.field public mToken:Landroid/os/IBinder;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$6TyxI3ZRr8Ouy0dIvPE1iSXEmFE(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumNumeric$27(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6n26S0C5gljgQU8a2MZl-dxYJO0(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumCharacterSequenceLength$10(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$78u7p9WMsI5KKBcMQ7dl57XGcFg(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$unRegisterDexBlocker$61()V

    return-void
.end method

.method public static synthetic $r8$lambda$7LUgTaYI7H0E5W6AeYNFEKoESV4(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setTrustAgentConfiguration$63(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KHNWWY_NnjCOkxRAuOqk_pwVpI(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumSymbols$29(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$8wSy5o7JGAIxPJ8SgnQKvknwMtg(Lcom/android/server/enterprise/security/PasswordPolicy;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$isClearLockAllowed$62()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ABVJ3f2GYstuTmMexcGjVhDs67s(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordHistoryLength$33(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Am7rJ3MTv5Pnin1Vt9yp9GR6KfI(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumLength$19(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpTJYcfOIaC09r49hWo1NPbRWpE(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setKeyguardDisabledFeatures$50(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-t5A5gFf3lopEkbLx8RPfyO_nk(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumFailedPasswordsForDisableSystemUI$54(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENf97z2JLjtJchm9dPnxRZZpCxw(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumNonLetter$32(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EsmZbwhTe2oDaNcGHnbxdU3nJzc(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumNumericSequenceLength$6(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_Cu9aMOHowMmKsikqZmhhdZUsk(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumLowerCase$24(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J8qOWR_L4dmj3Y-ng8nzgG42bUQ(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$clearResetPasswordToken$45(ILandroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JMcdjTG3ygSQBteyhqfLsOYYcV4(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$isResetPasswordTokenActive$46(ILandroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JVav2zUaQGG0RIA_9S1nYll6NtY(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumCharacterOccurrences$8(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$KY84z7E1hzQFIl6yxBlUU9YON4I(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getKeyguardDisabledFeatures$51(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KdE1hj_odZEGbUyXILyIoe2x3ro(ILjava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setRequiredPasswordPattern$0(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7yMifImC_BqvpLnT9TM90STk1U(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPwdChangeRequestedForUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MhYn7xgPE6Iua5qwNjG6Ix37cB8(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordExpirationTimeout$36(Landroid/content/ComponentName;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Npyx3B-PCaJ9RR79Y1EESffz-MU(ILjava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setForbiddenStrings$7(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O7i-Tr1CQYJ4uOScMc1y4gjLD9A(Lcom/android/server/enterprise/security/PasswordPolicy;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$isActivePasswordSufficient$38(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OnDsFwYErlv11OUZ3R12yNSyfWs(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumTimeToLock$47(Landroid/content/ComponentName;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$PWvCDW2MXQlqMYi6aWLsrs6WQ90(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumUpperCase$21(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qc6exyS2E5upyiHQhDpVkitKKk0(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMinimumCharacterChangeLength$11(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tw0zLWdygqUPlJWxUGIzBOpyplA(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordVisibilityEnabledSystemUI$57(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tz31gL6BwpKLmkNtz1eH_66i4Os(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setAdminLockEnabledSystemUI$58(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$VaUqOenTrVyOKyi09gtYIGk4yJ4(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumLength$20(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VczLo0BND7dzODhkgag0Ess0hEc(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumSymbols$30(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WOogHYaw0osHN90PQ__tK22ORr8(Lcom/android/server/enterprise/security/PasswordPolicy;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getCurrentFailedPasswordAttemptsInternal$40(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xie7RoN0ECiyBvR5JMih_C1nKGs(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getMaximumTimeToLock$48(Landroid/content/ComponentName;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YnYdfmhHnYa0JCbWHlL99bckLeg(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getMaximumFailedPasswordsForWipe$42(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZoYOg7fRnA03oVgQugq17GlMnoE(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumFailedPasswordsForDisable$5(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9OiS64KJv8ijCU3-B4CtV06d1c(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMaximumFailedPasswordsForWipe$41(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$brHod7gzMsmBMj_emMw9LQe-Gmw(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$removeBiometricAuthentication$49(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwWtUsx-Zyp0be6TJOAAw3nkAto(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordExpirationTimeout$35(Landroid/content/ComponentName;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$cdzNw4h_8cYpUgZu8ZIUGE6YC2Y(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$notifyPasswordPolicyOneLockChanged$59(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$crWzHD54mj4RVFkJgJQwQuqRboU()Ljava/lang/Integer;
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getUserIdByPackageNameOrUid$4()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dEPbo_i4FUu5jROBP-fXZAUZTO8(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPwdChangeRequestedSystemUI$53(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$eBFsNcO_F9ZgoNgWJfWQ2AgCD_4(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumUpperCase$22(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eGuE7fddXfn9khiJAUjz2rM0Tow(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumNonLetter$31(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$emK1hbVPL4jOXf-VmcmtcIq3W-M(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$lock$13(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$etNiUAsvlnCoUzjDzQO_VDpD3D8(Lcom/android/server/enterprise/security/PasswordPolicy;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getCurrentFailedPasswordAttempts$39(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g2JD24WmPTBGPV8f8xXz6XaOyjY(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)Ljava/lang/Boolean;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$resetPasswordWithToken$43(ILandroid/content/ComponentName;Ljava/lang/String;[BI)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g6m-SFx8mV11EOQbpVAb6wKxTjE(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$fingerprintAvailable$15(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$guKlKaKT1BNb1eTZno9SXmPsEcc(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumLetters$26(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hIWuQGwDNXSxwNAiK2PPlv-Slu4(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$excludeExternalStorageForFailedPasswordsWipeSystemUI$55(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLMuEYHdOwHqOevXQt4batcgpQk(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$registerDexBlocker$60()V

    return-void
.end method

.method public static synthetic $r8$lambda$i9aIkhOUTuXjLSkW7cNCHjouCow(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordVisibilityEnabled$12(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ifx52GH85SI8AzO1KyIh6NGRESQ(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumLetters$25(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$j_qW46QhyMSlock8uhCyNKQmw1c(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$irisAvailable$16(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kVGQFO0msS-27CL7fQLIlqTloKY(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordMinimumLowerCase$23(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$khtTx_k2XeE3d30bhsFVpqZx-PM(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordHistoryLength$34(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lLKfvxXiH6cjBKrbDt38gkhKr1c(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;[B)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setResetPasswordToken$44(ILandroid/content/ComponentName;[B)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mmy0kv9NM3pQ1IA0Y0h-gqBIv1U(Lcom/android/server/enterprise/security/PasswordPolicy;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setScreenLockPatternVisibilityEnabled$9(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHr161WGHE9UgGIwcaAlXfNsF64(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setMultifactorAuthenticationEnabledSystemUI$56(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uRunSrUsnXTRaaGz7BXx4Qcbfbk(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordQuality$17(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZWpmonwKKzozGr2UYqESq-zeeE(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordMinimumNumeric$28(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w9xPxZSRQo1SvaPVITEd5daUjW4(Lcom/android/server/enterprise/security/PasswordPolicy;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$setPasswordLockDelaySystemUI$52(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ybL9td7cigBkHkp2Tj2e-Z6vRNM(Lcom/android/server/enterprise/security/PasswordPolicy;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$unlock$14(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zVi15WFMSNEMT3LinBAHXXQsS7k(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordExpiration$37(Landroid/content/ComponentName;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zrGsNDmhomRvI0EXRcaw1YnhoDE(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getPasswordQuality$18(Landroid/content/ComponentName;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/app/admin/DevicePolicyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyCache(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/security/PasswordPolicyCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelManager(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePwdChangeForUser(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforcePwdChangeIfNeededAfterCall(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePwdChangeIfNeededOnStart(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePwdChangeIfNeededOnSwitch(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePwdChangeIfNeededOnTimeout(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdminLockEnabledSystemUI(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 180
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/enterprise/security/PasswordPolicy;->BIOMETRIC_AUTHENTICATION_TYPES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 251
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy$Injector;)V
    .registers 10

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mActivationMonitor:Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;

    .line 167
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 175
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mCallersWhitelist:Ljava/util/List;

    .line 185
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 194
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 195
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mToken:Landroid/os/IBinder;

    .line 325
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 822
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$5;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$5;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 256
    iget-object v2, p1, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 258
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->getDpmInstance()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 259
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 260
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 261
    invoke-virtual {p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->getPersonaManagerAdapterInstance()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 262
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    .line 263
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PHONE_STATE"

    .line 264
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    .line 265
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_STARTED"

    .line 266
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 267
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 272
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 308
    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLocalService:Lcom/android/server/enterprise/security/PasswordPolicy$LocalService;

    .line 309
    const-class v1, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    invoke-static {v1, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->initializePolicyCache()V

    .line 311
    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;

    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor-IA;)V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mActivationMonitor:Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;

    return-void
.end method

.method private synthetic lambda$clearResetPasswordToken$45(ILandroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2858
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2859
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p2, p1}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$enforcePwdChange$1(I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 724
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCS enabled for user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PasswordPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current quality = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SMART CARD Quality = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x70000

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private synthetic lambda$excludeExternalStorageForFailedPasswordsWipeSystemUI$55(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3287
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3288
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->excludeExternalStorageForFailedPasswordsWipeAsUser(IZ)V

    return-void
.end method

.method public static synthetic lambda$fingerprintAvailable$15(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2349
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 2350
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 2349
    :goto_1d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getCurrentFailedPasswordAttempts$39(I)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2767
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2768
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x0

    .line 2767
    invoke-interface {p0, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getCurrentFailedPasswordAttemptsInternal$40(I)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2779
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2780
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x0

    .line 2779
    invoke-interface {p0, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getKeyguardDisabledFeatures$51(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3155
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 3156
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 3155
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getMaximumFailedPasswordsForWipe$42(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2805
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2806
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2805
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getMaximumTimeToLock$48(Landroid/content/ComponentName;I)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2897
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2898
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2897
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordExpiration$37(Landroid/content/ComponentName;I)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2742
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2743
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2742
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordExpirationTimeout$36(Landroid/content/ComponentName;I)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2728
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2729
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2728
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordHistoryLength$34(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2698
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2699
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2698
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumLength$20(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2487
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2488
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2487
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumLetters$26(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2577
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2578
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2577
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumLowerCase$24(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2547
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2548
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2547
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumNonLetter$32(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2667
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2668
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2667
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumNumeric$28(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2607
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2608
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2607
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumSymbols$30(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2637
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2638
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2637
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordMinimumUpperCase$22(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2517
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2518
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2517
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPasswordQuality$18(Landroid/content/ComponentName;I)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2457
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2458
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v0, 0x0

    .line 2457
    invoke-interface {p0, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getUserIdByPackageNameOrUid$4()Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1283
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$irisAvailable$16(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2357
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.biometrics.iris"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isActivePasswordSufficient$38(I)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2755
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isClearLockAllowed$62()Ljava/lang/Boolean;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3460
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3463
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_b6

    .line 3464
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDoEnabled(I)Z

    move-result v1

    const-string v3, "PasswordPolicy"

    if-eqz v1, :cond_35

    .line 3465
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 3466
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    if-gtz v4, :cond_2d

    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 3467
    invoke-virtual {v4, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v1

    if-lez v1, :cond_35

    :cond_2d
    const-string/jumbo v0, "isClearLockAllowed - false due to DO and pwd policy"

    .line 3468
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3472
    :cond_35
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_a8

    .line 3473
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 3475
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object v4

    move v5, v2

    .line 3477
    :goto_42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a8

    .line 3478
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3479
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 3480
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_7b

    .line 3481
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x1

    invoke-interface {v8, v7, v9, v10}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v8

    if-gtz v8, :cond_73

    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    .line 3482
    invoke-interface {v8, v7, v9, v10}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v8

    if-lez v8, :cond_7b

    :cond_73
    const-string/jumbo v0, "isClearLockAllowed - false due to PO and parent pwd policy"

    .line 3483
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3488
    :cond_7b
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    if-eqz v7, :cond_a5

    .line 3489
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v7, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v8

    if-gtz v8, :cond_9d

    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 3490
    invoke-virtual {v8, v7, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v6

    if-lez v6, :cond_a5

    :cond_9d
    const-string/jumbo v0, "isClearLockAllowed - false due to PO and one lock"

    .line 3491
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 3499
    :cond_a8
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    move-result p0

    if-lez p0, :cond_b6

    const-string/jumbo p0, "isClearLockAllowed - false due to FailedPasswordsForDisable policy"

    .line 3500
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_b6
    return-object v0
.end method

.method private synthetic lambda$isResetPasswordTokenActive$46(ILandroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2871
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2872
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p2, p1}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$lock$13(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 2309
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyPasswordPolicyOneLockChanged$59(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3428
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3429
    sget-object v1, Lcom/android/server/enterprise/security/PasswordPolicy;->BIOMETRIC_AUTHENTICATION_TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2b

    aget v4, v1, v3

    .line 3430
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v5

    if-nez v5, :cond_28

    .line 3431
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3432
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeBiometricAuthentication(II)V

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2b
    return-void
.end method

.method public static synthetic lambda$postPwdResetEventToPersona$2(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    .line 1094
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string/jumbo v0, "knox.container.proxy.COMMAND_ENFORCE_PASSWORD"

    .line 1095
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$registerDexBlocker$60()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3442
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 3443
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const-string p0, "PasswordPolicy"

    const-string/jumbo v0, "registerDexBlocker was registered"

    .line 3444
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$removeBiometricAuthentication$49(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2906
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "removeBiometricAuthentication()"

    .line 2907
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 2909
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setBiometricState(ILcom/android/internal/widget/LockPatternUtils;II)V

    :cond_18
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_21

    const/16 p1, 0x100

    .line 2913
    invoke-virtual {p0, p2, v0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setBiometricState(ILcom/android/internal/widget/LockPatternUtils;II)V

    :cond_21
    return-void
.end method

.method private synthetic lambda$resetPasswordWithToken$43(ILandroid/content/ComponentName;Ljava/lang/String;[BI)Ljava/lang/Boolean;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2823
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2833
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setAdminLockEnabledSystemUI$58(IZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3324
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3325
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setAdminLockEnabled(IZZ)V

    return-void
.end method

.method public static synthetic lambda$setForbiddenStrings$7(ILjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed password forbidden strings to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 1516
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setKeyguardDisabledFeatures$50(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3135
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 3136
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 3135
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic lambda$setMaximumCharacterOccurrences$8(III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1602
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed password maximum character occurences to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 1601
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$setMaximumCharacterSequenceLength$10(III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1941
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed password maximum character sequence length to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 1940
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$setMaximumFailedPasswordsForDisable$5(III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1343
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed maximum failed passwords for disable to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 1342
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setMaximumFailedPasswordsForDisableSystemUI$54(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3274
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    if-lez p1, :cond_10

    .line 3278
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPkgNameforMaximumFailedAttemptforDisable(I)Ljava/lang/String;

    move-result-object p0

    .line 3277
    invoke-virtual {v0, p2, p1, p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setMaximumFailedPasswordsForDisableAsUser(IILjava/lang/String;)V

    goto :goto_14

    :cond_10
    const/4 p0, 0x0

    .line 3280
    invoke-virtual {v0, p2, p1, p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setMaximumFailedPasswordsForDisableAsUser(IILjava/lang/String;)V

    :goto_14
    return-void
.end method

.method private synthetic lambda$setMaximumFailedPasswordsForWipe$41(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2792
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2793
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2792
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static synthetic lambda$setMaximumNumericSequenceLength$6(III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1411
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed password maximum numeric sequence to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 1410
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setMaximumTimeToLock$47(Landroid/content/ComponentName;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2884
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2885
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 2884
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    return-void
.end method

.method public static synthetic lambda$setMinimumCharacterChangeLength$11(III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1999
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed password minimum character sequence length to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 1998
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setMultifactorAuthenticationEnabledSystemUI$56(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3294
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3295
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setMultifactorAuthEnabled(IZ)V

    return-void
.end method

.method private synthetic lambda$setPasswordExpirationTimeout$35(Landroid/content/ComponentName;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2712
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2713
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 2712
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2715
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordHistoryLength$33(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2682
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2683
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2682
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2685
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordLockDelaySystemUI$52(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3260
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setPasswordLockDelayAsUser(II)V

    return-void
.end method

.method private synthetic lambda$setPasswordMinimumLength$19(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2471
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2472
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2471
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2474
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordMinimumLetters$25(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2561
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2562
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2561
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2564
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordMinimumLowerCase$23(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2531
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2532
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2531
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2534
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordMinimumNonLetter$31(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2651
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2652
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2651
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2654
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordMinimumNumeric$27(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2591
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2592
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2591
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2594
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordMinimumSymbols$29(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2621
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2622
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2621
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2624
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordMinimumUpperCase$21(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2501
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2502
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2501
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2504
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordQuality$17(Landroid/content/ComponentName;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2440
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 2441
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2440
    invoke-interface {p0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 2443
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$setPasswordVisibilityEnabled$12(IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2154
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "show_password"

    const-string v3, "PasswordPolicy"

    if-eqz v0, :cond_22

    if-nez p2, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result p2

    if-nez p2, :cond_22

    const-string p2, "do not putIntForUser"

    .line 2155
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2, v1, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2159
    :cond_22
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 2160
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 2163
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 2164
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p2

    if-nez p2, :cond_52

    const-string p2, "!hasSeparateChallenge"

    .line 2167
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_52
    return-void
.end method

.method private synthetic lambda$setPasswordVisibilityEnabledSystemUI$57(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3301
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3302
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setPasswordVisibilityEnabledAsUser(IZ)V

    return-void
.end method

.method private synthetic lambda$setPwdChangeRequestedForUser$3(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1172
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 1173
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1175
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 1176
    invoke-interface {p0, v0, v1, p1}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 1179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1180
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1181
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1183
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PasswordPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    const-string v3, "com.android.settings"

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1187
    invoke-interface {p0, v3, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1188
    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z

    goto :goto_23

    :cond_65
    return-void
.end method

.method private synthetic lambda$setPwdChangeRequestedSystemUI$53(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3267
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3268
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setPwdChangeRequestedAsUser(II)V

    return-void
.end method

.method public static synthetic lambda$setRequiredPasswordPattern$0(ILjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has changed password required pattern to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    move v6, p2

    .line 495
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$setResetPasswordToken$44(ILandroid/content/ComponentName;[B)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2845
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2846
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p2, p3, p1}, Landroid/app/admin/IDevicePolicyManager;->setResetPasswordTokenMDM(Landroid/content/ComponentName;[BI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setScreenLockPatternVisibilityEnabled$9(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1857
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1858
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1859
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1861
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1862
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1865
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 1866
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_42
    return-void
.end method

.method private synthetic lambda$setTrustAgentConfiguration$63(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3593
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfigurationMDM(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string p2, "Failed talking with device policy service"

    .line 3595
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private synthetic lambda$unRegisterDexBlocker$61()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3450
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 3451
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    const-string p0, "PasswordPolicy"

    const-string/jumbo v0, "registerDexBlocker was unregistered"

    .line 3452
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$unlock$14(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2336
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has successfully unlocked Workspace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2338
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "PasswordPolicy"

    .line 2335
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2339
    invoke-virtual {p0, p2, p1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    const-string/jumbo p0, "knox.container.proxy.POLICY_ADMIN_UNLOCK"

    .line 2340
    invoke-static {p0, p3}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ChooseNewPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 15

    .line 1700
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1701
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1703
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1705
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_d6

    .line 1707
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d6

    .line 1708
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    .line 1710
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1711
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_2c
    if-ge v8, v6, :cond_3e

    aget-object v9, v1, v8

    .line 1712
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 1715
    :cond_3e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1719
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    move v8, v7

    :goto_4d
    if-ltz v1, :cond_7e

    if-nez v8, :cond_7e

    .line 1720
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1721
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_55

    .line 1722
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v8, v6

    :cond_76
    if-nez v8, :cond_7e

    .line 1729
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    .line 1735
    :cond_7e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "passwordPatternOwner"

    if-nez v0, :cond_cb

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1737
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_90
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1738
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 1740
    :cond_b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v7, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1741
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1743
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1745
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1743
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_d6

    .line 1747
    :cond_cb
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1749
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_d6
    :goto_d6
    return v3
.end method

.method public final addOwnerToStack(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 6

    .line 1791
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1792
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1794
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1796
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "passwordPatternOwner"

    .line 1794
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1798
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1801
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 1803
    :cond_3a
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1806
    :goto_40
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public addRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 9

    .line 3372
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_44

    .line 3373
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_44

    .line 3376
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_33
    move-object v5, p2

    .line 3383
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return p0
.end method

.method public final changePasswordAsUser(I)V
    .registers 2

    if-nez p1, :cond_a

    .line 1034
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUserInternal(I)V

    const/4 p1, 0x1

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setHomeAndRecentKey(I)V

    goto :goto_d

    .line 1038
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUserInternal(I)V

    :goto_d
    return-void
.end method

.method public final changePasswordAsUserInternal(I)V
    .registers 5

    .line 1045
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1046
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(I)Z

    return-void

    .line 1049
    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_59

    .line 1053
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result p1

    if-nez p1, :cond_43

    .line 1055
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.password.ChooseLockGeneric"

    const-string v2, "com.android.settings"

    .line 1057
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1058
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400000

    .line 1059
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 1060
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_isenforced"

    const/4 v2, 0x1

    .line 1061
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_59

    .line 1064
    :cond_43
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_59

    :catch_50
    move-exception p0

    const-string p1, "PasswordPolicy"

    const-string/jumbo v0, "handled expected Exception in changePasswordAsUser()."

    .line 1069
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_59
    :goto_59
    return-void
.end method

.method public final checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 371
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 372
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    return-object p1

    .line 375
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 396
    :cond_17
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mCallersWhitelist:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    .line 400
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSystemUser()V

    return-void
.end method

.method public final checkRegex(Ljava/lang/String;)Z
    .registers 2

    .line 506
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public clearResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 5

    .line 2853
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2854
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2855
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1a

    .line 2856
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2857
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    .line 2862
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 12

    .line 2047
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v0

    const/4 v1, 0x0

    aput p0, v2, v1

    const-class p0, I

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    move v2, v1

    .line 2049
    :goto_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_29

    .line 2050
    aget-object v3, p0, v2

    aput v2, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    move v2, v1

    .line 2051
    :goto_2a
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_37

    .line 2052
    aget-object v3, p0, v1

    aput v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_37
    move v2, v0

    .line 2054
    :goto_38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_75

    move v3, v0

    .line 2055
    :goto_3f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_72

    .line 2056
    aget-object v4, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v6, p0, v5

    aget v6, v6, v3

    add-int/2addr v6, v0

    add-int/lit8 v7, v3, -0x1

    aget v8, v4, v7

    add-int/2addr v8, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget-object v8, p0, v5

    aget v8, v8, v7

    .line 2058
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_67

    move v5, v1

    goto :goto_68

    :cond_67
    move v5, v0

    :goto_68
    add-int/2addr v8, v5

    .line 2056
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 2060
    :cond_75
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    aget-object p0, p0, p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public final containsForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 12

    .line 2088
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_a4

    const/16 v0, 0x10

    if-lt p0, v0, :cond_d

    goto/16 :goto_a4

    .line 2093
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\w(?=\\w{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2095
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2096
    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 2098
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2102
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2105
    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_2b

    :cond_40
    add-int/lit8 v3, v1, 0x1

    .line 2110
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    if-nez v3, :cond_4c

    move v3, p1

    goto :goto_51

    :cond_4c
    if-lez v3, :cond_50

    move v3, v4

    goto :goto_51

    :cond_50
    const/4 v3, -0x1

    .line 2114
    :goto_51
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, p0, 0x5

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x5c

    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x51

    .line 2116
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, p1

    :goto_66
    if-ge v7, p0, :cond_86

    add-int/2addr v2, v3

    int-to-char v2, v2

    add-int v8, v1, v7

    add-int/2addr v8, v4

    .line 2122
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v8

    if-nez v8, :cond_7e

    goto :goto_84

    .line 2127
    :cond_7e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    :cond_84
    :goto_84
    move v2, v4

    goto :goto_87

    :cond_86
    move v2, p1

    :goto_87
    if-ne v2, v4, :cond_8a

    goto :goto_2b

    .line 2136
    :cond_8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x45

    .line 2137
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v2, v1, p0

    add-int/2addr v2, v4

    .line 2139
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v4

    :cond_a4
    :goto_a4
    return p1
.end method

.method public final containsForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    .line 1572
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    .line 1574
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2c

    .line 1577
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1578
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_2c
    :goto_2c
    return p1
.end method

.method public final containsForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 11

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_83

    const/16 v0, 0x10

    if-lt p0, v0, :cond_d

    goto/16 :goto_83

    .line 1460
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\d(?=\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1461
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1462
    :cond_2b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1464
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 1468
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 1469
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    if-nez v3, :cond_45

    move v3, p1

    goto :goto_4a

    :cond_45
    if-lez v3, :cond_49

    move v3, v4

    goto :goto_4a

    :cond_49
    const/4 v3, -0x1

    .line 1472
    :goto_4a
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, p0, 0x5

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x5c

    .line 1473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x51

    .line 1474
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, p1

    :goto_5f
    if-ge v7, p0, :cond_69

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 1478
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 1481
    :cond_69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x45

    .line 1482
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v2, v1, p0

    add-int/2addr v2, v4

    .line 1484
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v4

    :cond_83
    :goto_83
    return p1
.end method

.method public final containsForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 2074
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    if-nez p1, :cond_b

    return v0

    .line 2078
    :cond_b
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    if-ge p0, p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public final containsMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 9

    .line 1647
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 1652
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1653
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 1654
    array-length v1, p2

    move v2, p1

    :goto_13
    if-ge v2, v1, :cond_68

    aget-char v3, p2, v2

    .line 1655
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5a

    .line 1656
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_4c

    .line 1658
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PasswordPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1661
    :cond_4c
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 1663
    :cond_5a
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_68
    return p1
.end method

.method public deleteAllRestrictions(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 525
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v6, 0x0

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordRequiredPattern"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 529
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v2, :cond_33

    .line 530
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    goto :goto_38

    .line 534
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_38

    :cond_37
    const/4 v0, 0x1

    :cond_38
    :goto_38
    return v0
.end method

.method public final enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 384
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 379
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 379
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 366
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 719
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 737
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    move-result p0

    return p0
.end method

.method public final enforcePwdChangeForUser(II)Z
    .registers 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Enforce password change policy applied for user %d by %d"

    .line 742
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 753
    :try_start_20
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 756
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 757
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(I)Z

    .line 758
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return v3

    .line 761
    :cond_32
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 767
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v4

    .line 768
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v4, :cond_57

    const/4 v4, 0x3

    .line 771
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 775
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_53

    if-eq p2, v5, :cond_4e

    goto :goto_53

    :cond_4e
    const/4 v4, -0x4

    .line 781
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_6a

    .line 777
    :cond_53
    :goto_53
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto :goto_6a

    .line 788
    :cond_57
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_67

    if-eq p2, v5, :cond_62

    goto :goto_67

    :cond_62
    const/4 v4, -0x2

    .line 794
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_6a

    .line 790
    :cond_67
    :goto_67
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_6a} :catch_6c

    :goto_6a
    move v2, v3

    goto :goto_8a

    :catch_6c
    move-exception p1

    .line 800
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during password enforcement: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "PasswordPolicy"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 803
    :goto_8a
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return v2
.end method

.method public final enforcePwdChangeIfNeededAfterCall(I)V
    .registers 5

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    const/4 v1, -0x3

    if-eq v0, v1, :cond_12

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    move v0, v2

    goto :goto_15

    :cond_10
    const/4 v0, 0x1

    goto :goto_15

    :cond_12
    const/4 v0, 0x2

    goto :goto_15

    :cond_14
    const/4 v0, 0x3

    :goto_15
    if-lez v0, :cond_1d

    .line 1009
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    :cond_1d
    return-void
.end method

.method public final enforcePwdChangeIfNeededOnStart(I)V
    .registers 5

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/4 v1, -0x3

    if-eq v0, v1, :cond_15

    const/4 v1, -0x2

    if-eq v0, v1, :cond_13

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    move v0, v2

    goto :goto_18

    :cond_13
    const/4 v0, 0x1

    goto :goto_18

    :cond_15
    const/4 v0, 0x2

    goto :goto_18

    :cond_17
    const/4 v0, 0x3

    :goto_18
    if-eqz v0, :cond_1d

    .line 925
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    :cond_1d
    return-void
.end method

.method public final enforcePwdChangeIfNeededOnSwitch(I)V
    .registers 4

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v1

    if-lez v0, :cond_f

    if-nez v1, :cond_f

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    :cond_f
    return-void
.end method

.method public final enforcePwdChangeIfNeededOnTimeout(I)V
    .registers 5

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 960
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 963
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    if-eq p1, v0, :cond_17

    goto :goto_1c

    :cond_17
    const/4 v0, -0x3

    .line 972
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_23

    :cond_1c
    :goto_1c
    const/4 v0, 0x2

    .line 966
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 968
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 361
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSystemUser()V
    .registers 3

    .line 665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 666
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_d

    return-void

    .line 670
    :cond_d
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_18

    return-void

    .line 671
    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 2225
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2226
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2228
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "PASSWORD"

    const-string v4, "excludeExternalStorageWipe"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 2233
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    .line 2234
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->excludeExternalStorageForFailedPasswordsWipeSystemUI(IZ)V

    :cond_1d
    return p2
.end method

.method public final excludeExternalStorageForFailedPasswordsWipeSystemUI(IZ)V
    .registers 5

    .line 3286
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final fingerprintAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 2348
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda21;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 2352
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getAllOneLockedChildUsers(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3389
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 3390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PasswordPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :try_start_22
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 3394
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3395
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_42

    const-string p1, "getAllOneLockedChildUsers - isManagedProfile() true return empty locked users"

    .line 3396
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3c} :catch_a2
    .catchall {:try_start_22 .. :try_end_3c} :catchall_a0

    .line 3417
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-object v0

    .line 3400
    :cond_42
    :try_start_42
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3401
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_51
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3402
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 3403
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    .line 3404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hasSeparateChallenge"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_51

    .line 3406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addding userid to onelock users array "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_9f} :catch_a2
    .catchall {:try_start_42 .. :try_end_9f} :catchall_a0

    goto :goto_51

    :catchall_a0
    move-exception p1

    goto :goto_ae

    :catch_a2
    move-exception p1

    :try_start_a3
    const-string v3, "getAllOneLockedChildUsers() failed. "

    .line 3413
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_a0

    .line 3417
    :cond_a8
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-object v0

    :goto_ae
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    .line 3418
    throw p1
.end method

.method public getCurrentFailedPasswordAttempts(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4

    .line 2762
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    .line 2763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2764
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2765
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2766
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2771
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4

    .line 2774
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    .line 2775
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2776
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2777
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2778
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2783
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 6

    .line 1676
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1678
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "passwordPatternOwner"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1682
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1683
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1684
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1685
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 1686
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1689
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    goto :goto_42

    :cond_41
    const/4 p0, -0x1

    :goto_42
    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 340
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 342
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.uid.system:1000"

    .line 1533
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1535
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const-string v1, " "

    const/4 v2, 0x0

    const-string/jumbo v3, "passwordForbiddenStrings"

    const-string v4, "PASSWORD"

    if-eqz p2, :cond_6c

    .line 1538
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v4, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1541
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p2

    .line 1542
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1543
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1544
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1543
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1545
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    :cond_3c
    if-eqz p1, :cond_6b

    .line 1548
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6b

    .line 1549
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1551
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4d

    :cond_6a
    return-object p0

    :cond_6b
    return-object v2

    .line 1557
    :cond_6c
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_84

    .line 1560
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_84
    return-object v2
.end method

.method public final getInnerAuthUserIdForDualDarDo()I
    .registers 2

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isDualDarDoEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 1233
    :cond_8
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1234
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getInnerAuthUserForDo()I

    move-result p0

    return p0
.end method

.method public getKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 3148
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 3149
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 3150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3152
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 3153
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3154
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 3159
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I
    .registers 4

    const-string p1, "PasswordPolicy"

    .line 3168
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "keyguardDisabledFeatures"

    .line 3169
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3168
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_1a

    :catch_10
    move-exception p0

    const-string p2, "getKeyguardDisabledFeatures() failed"

    .line 3171
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 3174
    :goto_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getKeyguardDisabledFeatures() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 7

    .line 1614
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1616
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "passwordMaximumCharacterOccurences"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1621
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 1622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1623
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1625
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1623
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1626
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_31
    const/4 p0, 0x0

    .line 1630
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p0, :cond_49

    goto :goto_4d

    :cond_49
    if-eqz v0, :cond_36

    if-le p0, v0, :cond_36

    :goto_4d
    move p0, v0

    goto :goto_36

    :cond_4f
    return p0
.end method

.method public getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 9

    .line 1955
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1957
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMaximumCharacterSequenceLength"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1961
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object v0

    .line 1962
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1963
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1964
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1963
    invoke-virtual {v5, v6, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1965
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_35
    const/4 p0, 0x0

    .line 1969
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p0, :cond_4d

    goto :goto_51

    :cond_4d
    if-eqz v0, :cond_3a

    if-le p0, v0, :cond_3a

    :goto_51
    move p0, v0

    goto :goto_3a

    :cond_53
    return p0
.end method

.method public getMaximumFailedPasswordsForDisable(I)I
    .registers 7

    .line 1365
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "passwordAttemptDeviceDisable"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v3, "ro.organization_owned"

    .line 1370
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    const-string/jumbo v4, "true"

    .line 1371
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 1373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1374
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1376
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1374
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1377
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    :cond_3f
    const/4 p0, 0x0

    .line 1382
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p0, :cond_57

    goto :goto_5b

    :cond_57
    if-eqz v0, :cond_44

    if-le p0, v0, :cond_44

    :goto_5b
    move p0, v0

    goto :goto_44

    :cond_5d
    return p0
.end method

.method public getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 1360
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1361
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    move-result p0

    return p0
.end method

.method public getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2799
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2800
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2801
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2802
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2803
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2804
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2809
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 7

    .line 1424
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1426
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1430
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 1431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1432
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1434
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1432
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1435
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_31
    const/4 p0, 0x0

    .line 1439
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p0, :cond_49

    goto :goto_4d

    :cond_49
    if-eqz v0, :cond_36

    if-le p0, v0, :cond_36

    :goto_4d
    move p0, v0

    goto :goto_36

    :cond_4f
    return p0
.end method

.method public getMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J
    .registers 5

    .line 2891
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2892
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 2893
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2894
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_25

    .line 2895
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2896
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    .line 2901
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 9

    .line 2013
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2015
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2019
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object v0

    .line 2020
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2021
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2022
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2021
    invoke-virtual {v5, v6, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2023
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_35
    const/4 p0, 0x0

    .line 2027
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p0, :cond_4d

    goto :goto_51

    :cond_4d
    if-eqz v0, :cond_3a

    if-ge p0, v0, :cond_3a

    :goto_51
    move p0, v0

    goto :goto_3a

    :cond_53
    return p0
.end method

.method public getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 9

    .line 691
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordChangeTimeout"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 697
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object v0

    .line 698
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 699
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 700
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 699
    invoke-virtual {v5, v6, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 701
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 705
    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    move v0, p1

    :cond_3b
    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 706
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4e

    goto :goto_3b

    :cond_4e
    if-eq v0, p1, :cond_56

    .line 709
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_3b

    .line 710
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3b

    :cond_5b
    if-gtz v0, :cond_5e

    const/4 v0, 0x0

    :cond_5e
    return v0
.end method

.method public getPasswordExpiration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J
    .registers 5

    .line 2736
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2737
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2738
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v0, 0x0

    .line 2739
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2740
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_25

    .line 2741
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    .line 2746
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J
    .registers 5

    .line 2722
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2723
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2724
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2726
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_23

    .line 2727
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_25

    :cond_23
    const-wide/16 p0, 0x0

    :goto_25
    return-wide p0
.end method

.method public getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2692
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2693
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2694
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2695
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2696
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2697
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2702
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPasswordLockDelay(I)I
    .registers 7

    .line 439
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "unlockDelay"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 444
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 445
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 447
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 451
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    move v0, p1

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 452
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_46

    goto :goto_33

    :cond_46
    if-eq v0, p1, :cond_4e

    .line 455
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_33

    .line 458
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33

    :cond_53
    if-gez v0, :cond_56

    goto :goto_57

    :cond_56
    move p1, v0

    :goto_57
    return p1
.end method

.method public getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 466
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(I)I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2481
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2482
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2483
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2485
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2486
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2491
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2571
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2572
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2573
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2575
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2576
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2581
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2541
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2542
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 2543
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2544
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2545
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2546
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2551
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2661
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2662
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2663
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2664
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2665
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2666
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2672
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2602
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2603
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2604
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2605
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2606
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2611
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2631
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2632
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2633
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2634
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2635
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2636
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2641
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2512
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2513
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2515
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2516
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2521
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I
    .registers 5

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2452
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2453
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    .line 2454
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2455
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_24

    .line 2456
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    .line 2461
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 3339
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getPkgNameforMaximumFailedAttemptforDisable(I)Ljava/lang/String;
    .registers 5

    .line 3512
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3513
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "passwordAttemptDeviceDisable"

    .line 3512
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3514
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .registers 10

    const-string v0, "android.uid.system:1000"

    .line 550
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 551
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object v0

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "passwordRequiredPattern"

    const-string v5, "PASSWORD"

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 557
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 558
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 557
    invoke-virtual {v6, v5, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 559
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    .line 562
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    .line 563
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_44

    return-object v2

    :cond_44
    const/4 p0, 0x0

    .line 566
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4c
    if-eqz p2, :cond_5f

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5e

    .line 572
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2, p1, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    return-object v2

    .line 577
    :cond_5f
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2, p1, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRestrictedKeyCodes()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1834
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p0

    if-lez p0, :cond_2c

    .line 1835
    new-instance p0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Integer;

    .line 1836
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const/16 v1, 0xbb

    .line 1837
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 1836
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    const-string p0, "PasswordPolicy"

    return-object p0
.end method

.method public final declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "statusbar"

    .line 348
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuperLockState(I)I
    .registers 2

    .line 2418
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_9

    .line 2419
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const/4 p1, 0x0

    if-eqz p0, :cond_19

    .line 2424
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result p1

    .line 2426
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result p0

    if-eqz p0, :cond_19

    add-int/lit8 p1, p1, 0x2

    :cond_19
    return p1
.end method

.method public getSupportedBiometricAuthentications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3106
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3107
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1f

    const-string v0, "android.hardware.fingerprint"

    .line 3109
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    .line 3112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "Fingerprint"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const/4 p0, 0x4

    .line 3117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "Face"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 5

    if-nez p1, :cond_b

    .line 1268
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1270
    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1271
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return p0

    .line 1273
    :cond_18
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    const-string v1, ":"

    .line 1275
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    const/4 v2, 0x0

    .line 1277
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_34
    const-string v1, "android.uid.systemui"

    .line 1280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 1281
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_58

    .line 1282
    :cond_46
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance p1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda29;

    invoke-direct {p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 1285
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1287
    :cond_58
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "android.uid.system:1000"

    .line 600
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "android.uid.system:1000"

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "android.uid.system:1000"

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "android.uid.system:1000"

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "android.uid.system:1000"

    .line 638
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPassword(I)Z
    .registers 4

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 814
    :cond_8
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v0, "android"

    .line 815
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_13

    return v1

    .line 818
    :cond_13
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->getActivePasswordQuality(I)I

    move-result p0

    if-lez p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public final initMaximumFailedPasswordsForDisableSystemUI(I)V
    .registers 4

    .line 3247
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMaximumFailedPasswordsForDisableSystemUI(II)V

    const-string/jumbo v0, "ro.organization_owned"

    .line 3249
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string v1, "false"

    .line 3250
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3251
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 3252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3253
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMaximumFailedPasswordsForDisableSystemUI(II)V

    goto :goto_20

    :cond_3c
    return-void
.end method

.method public final initializePolicyCache()V
    .registers 2

    .line 316
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->getInstance()Lcom/android/server/enterprise/security/PasswordPolicyCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    .line 317
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->updatePolicyCache()V

    return-void
.end method

.method public final irisAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 2356
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 2359
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isActivePasswordSufficient(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 2750
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2751
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2752
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2753
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1a

    .line 2754
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    .line 2758
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 3

    .line 3018
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3020
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result p0

    return p0
.end method

.method public isBiometricAuthenticationEnabledAsUser(II)Z
    .registers 12

    .line 3027
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isValidBioAuth(I)Z

    move-result v0

    const-string v1, ", userId = "

    const/4 v2, 0x0

    const-string v3, "PasswordPolicy"

    if-nez v0, :cond_27

    .line 3028
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isBiometricAuthenticationEnabledAsUser: bioAuth is wrong value : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3032
    :cond_27
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordBioAuthEnabled"

    invoke-virtual {v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3036
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object v6

    .line 3037
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3038
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3039
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3038
    invoke-virtual {v8, v4, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 3040
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3a

    .line 3043
    :cond_54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    move v5, v2

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 3044
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_6d

    goto :goto_5a

    .line 3046
    :cond_6d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p2

    if-eq v5, p2, :cond_90

    .line 3047
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isBiometricAuthenticationEnabledAsUser(): disallowed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_90
    move v5, v4

    goto :goto_5a

    :cond_92
    if-eqz v5, :cond_aa

    .line 3054
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isBiometricAuthenticationEnabledAsUser: return true (hasValue) "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_aa
    if-ne p2, v4, :cond_b5

    .line 3057
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 3058
    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_b5

    return v4

    :cond_b5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c1

    .line 3064
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 3065
    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_c1

    return v4

    :cond_c1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d3

    .line 3067
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 3068
    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p0

    if-nez p0, :cond_d3

    const-string/jumbo p0, "isBiometricAuthenticationEnabledAsUser(FACE): return true "

    .line 3070
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3074
    :cond_d3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isBiometricAuthenticationEnabledAsUser(): allowed as default, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 1293
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1294
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p0

    return p0
.end method

.method public isChangeRequestedAsUser(I)I
    .registers 2

    .line 1305
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result p0

    return p0
.end method

.method public final isChangeRequestedAsUserFromDb(I)I
    .registers 3

    .line 1310
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "passwordChangeRequested"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1313
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isChangeRequestedForInner()I
    .registers 2

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getInnerAuthUserIdForDualDarDo()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p0

    return p0
.end method

.method public isClearLockAllowed()Z
    .registers 3

    .line 3459
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "isClearLockAllowed - true"

    .line 3507
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isDualDarDoEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isDualDarLicenseLockedCase(I)Z
    .registers 5

    .line 3343
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDoEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 3344
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 3346
    :cond_16
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3347
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 3348
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3349
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3350
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3352
    :try_start_50
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, v0}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_56} :catch_59

    if-eqz v0, :cond_28

    return v1

    :catch_59
    move-exception v0

    .line 3356
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method public final isExternalStorageForFailedPasswordsWipeExcluded(I)Z
    .registers 7

    .line 2250
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string v2, "excludeExternalStorageWipe"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2255
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 2256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2257
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2259
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2257
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2260
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_2c
    if-eqz v0, :cond_4e

    .line 2263
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_35

    goto :goto_4e

    .line 2267
    :cond_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x1

    :goto_4d
    return p1

    :cond_4e
    :goto_4e
    const-string p0, "PasswordPolicy"

    const-string/jumbo p1, "isExternalStorageForFailedPasswordsWipeExcluded() : no admin enforce password policy. "

    .line 2264
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 2243
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2244
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(I)Z

    move-result p0

    return p0
.end method

.method public isKeyCodeInputAllowed(I)Z
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_d

    return v1

    :cond_d
    const/4 p1, 0x0

    .line 1887
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p0

    if-gtz p0, :cond_15

    goto :goto_16

    :cond_15
    move v1, p1

    :goto_16
    return v1
.end method

.method public isMDMDisabledFP(I)Z
    .registers 4

    .line 3002
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PASSWORD"

    const-string/jumbo v1, "passwordBioAuthEnabled"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 3004
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3005
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_23

    goto :goto_10

    .line 3007
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    move p1, v1

    goto :goto_10

    :cond_2d
    if-eqz p1, :cond_37

    const-string p0, "PasswordPolicy"

    const-string/jumbo v0, "isMDMDisabledFP: disallowed fingerprint."

    .line 3011
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return p1
.end method

.method public isMultifactorAuthenticationEnabled(I)Z
    .registers 4

    .line 2406
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PASSWORD"

    const-string/jumbo v1, "multifactorAuthEnabled"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 2409
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 2410
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2393
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMultifactorAuthenticationEnabled is called for user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller uid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PasswordPolicy"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PASSWORD"

    const-string/jumbo v1, "multifactorAuthEnabled"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 2398
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 2399
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_48
    const/4 p0, 0x0

    return p0
.end method

.method public isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "android.uid.system:1000"

    .line 652
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 655
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 657
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 658
    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 659
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :cond_18
    return v0
.end method

.method public isPasswordTableExist(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 3098
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3100
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PASSWORD"

    const-string/jumbo v1, "passwordBioAuthEnabled"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 3102
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 2189
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2190
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isPasswordVisibilityEnabledAsUser(I)Z
    .registers 7

    .line 2196
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "passwordVisibilityEnabled"

    .line 2197
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 2202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2203
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2205
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2204
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2206
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 2209
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_45

    :cond_44
    const/4 p1, 0x1

    :goto_45
    return p1
.end method

.method public final isPersona(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isResetPasswordTokenActive(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 5

    .line 2866
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2867
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2868
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1a

    .line 2869
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2870
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    .line 2875
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 1893
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1894
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .registers 7

    .line 1900
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PASSWORD"

    const-string/jumbo v2, "screenLockPatternVisibility"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1904
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getAllOneLockedChildUsers(I)Ljava/util/List;

    move-result-object p1

    .line 1905
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1906
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1907
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1906
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1908
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 1911
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_45

    :cond_44
    const/4 p1, 0x1

    :goto_45
    return p1
.end method

.method public final isValidBioAuth(I)Z
    .registers 4

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 3087
    :cond_a
    :goto_a
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_11

    .line 3088
    div-int/lit8 p1, p1, 0x2

    goto :goto_a

    :cond_11
    if-ne p1, p0, :cond_14

    return p0

    :cond_14
    :goto_14
    return v0
.end method

.method public lock(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 14

    .line 2278
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2280
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-nez v0, :cond_a

    .line 2284
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_10

    .line 2286
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v1

    :goto_10
    const/4 v2, 0x0

    .line 2290
    :try_start_11
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1d

    if-eqz v3, :cond_21

    move v0, v2

    goto :goto_21

    :catch_1d
    move-exception v3

    .line 2294
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2297
    :cond_21
    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock is called for user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ownerUid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PasswordPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 2299
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has successfully locked Workspace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2301
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-string v9, "PasswordPolicy"

    .line 2298
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 2303
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    .line 2305
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.intent.extra.user_handle"

    .line 2306
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "knox.container.proxy.EXTRA_CONTAINER_OWNER"

    .line 2307
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2308
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda43;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda43;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "android.intent.extra.RETURN_RESULT"

    .line 2313
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_96

    return p1

    :cond_96
    return v2
.end method

.method public notifyPasswordPolicyOneLockChanged(ZI)V
    .registers 4

    .line 3424
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor(I)V

    if-eqz p1, :cond_f

    .line 3427
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_f
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 1816
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1818
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 1819
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor(I)V

    :cond_13
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final postPwdResetEventToPersona(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public reboot(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 5

    .line 3205
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3206
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot() called, userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PasswordPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {p0, p2}, Landroid/app/admin/IDevicePolicyManager;->rebootMDM(Ljava/lang/String;)Z

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p0

    const-string/jumbo p1, "reboot() has failed. "

    .line 3213
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_2e
    if-eqz p0, :cond_36

    const p0, 0x1040193

    .line 3216
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_36
    return-void
.end method

.method public final registerDexBlocker()V
    .registers 3

    .line 3441
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final removeBiometricAuthentication(II)V
    .registers 5

    .line 2905
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final removeOwnerFromStack(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 13

    .line 1761
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1762
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1764
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    const-string v3, ","

    .line 1768
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1770
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1f
    if-ge v7, v5, :cond_48

    aget-object v8, v1, v7

    .line 1771
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1772
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v9, v10, :cond_45

    .line 1773
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1776
    :cond_48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1777
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_54

    const/4 p1, 0x0

    goto :goto_5e

    .line 1780
    :cond_54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1782
    :goto_5e
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_63
    return-void
.end method

.method public resetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z
    .registers 4

    .line 2813
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "resetPassword is deprecated, use resetPasswordWithToken()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetPasswordWithToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .registers 15

    .line 2817
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2818
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2820
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_20

    .line 2821
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2822
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)V

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    .line 2836
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final setAdminLockEnabledSystemUI(IZZ)V
    .registers 7

    if-eqz p3, :cond_a

    .line 3311
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isDualDarLicenseLockedCase(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 3319
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isKnoxId(I)Z

    move-result v0

    const-string v1, "PasswordPolicy"

    if-eqz v0, :cond_1d

    const-string/jumbo p0, "return : this is Knox user"

    .line 3320
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3323
    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    if-eqz p3, :cond_44

    .line 3329
    :try_start_29
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_44

    const-string/jumbo p1, "validateLicenses() called"

    .line 3330
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->validateLicenses()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_3d

    goto :goto_44

    :catch_3d
    move-exception p0

    const-string/jumbo p1, "validateLicenses() failed. "

    .line 3334
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public setBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p2

    const-string/jumbo v2, "passwordBioAuthEnabled"

    const-string v3, "PASSWORD"

    if-gez v0, :cond_d

    const/4 v0, 0x0

    return v0

    .line 2928
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    .line 2929
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    const/16 v5, 0xff

    .line 2932
    :try_start_17
    iget-object v6, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move v6, v5

    :goto_21
    if-gez v6, :cond_24

    goto :goto_25

    :cond_24
    move v5, v6

    :goto_25
    if-eqz p3, :cond_29

    or-int/2addr v5, v0

    goto :goto_2b

    :cond_29
    not-int v6, v0

    and-int/2addr v5, v6

    .line 2944
    :goto_2b
    iget-object v6, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7, v3, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12c

    if-nez p3, :cond_7e

    .line 2949
    invoke-virtual {v1, v0, v12}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeBiometricAuthentication(II)V

    .line 2951
    iget-object v3, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v3}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v5

    .line 2953
    :try_start_40
    iget-object v3, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2954
    invoke-virtual {v3, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2957
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 2958
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_71

    .line 2961
    invoke-virtual {v3, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2962
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeBiometricAuthentication(II)V
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_77

    .line 2966
    :cond_71
    iget-object v3, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_7e

    :catchall_77
    move-exception v0

    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    .line 2967
    throw v0

    .line 2969
    :cond_7e
    :goto_7e
    iget-object v3, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v3}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v13

    if-eqz p3, :cond_89

    const-string v3, "allowed"

    goto :goto_8b

    :cond_89
    const-string v3, "disallowed"

    :goto_8b
    and-int/lit8 v5, v0, 0x2

    const-string v15, " has "

    const-string v11, "Admin "

    if-eqz v5, :cond_c2

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 2974
    :try_start_95
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "PasswordPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " BIOMETRIC_AUTHENTICATION_IRIS"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x1

    move/from16 p1, v2

    move-object v2, v11

    move v11, v12

    .line 2973
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_c5

    :catchall_c0
    move-exception v0

    goto :goto_120

    :cond_c2
    move/from16 p1, v2

    move-object v2, v11

    :goto_c5
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_f2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 2980
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "PasswordPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " BIOMETRIC_AUTHENTICATION_FINGERPRINT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v11, v12

    .line 2979
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_f2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_126

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 2986
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "PasswordPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " BIOMETRIC_AUTHENTICATION_FACE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v11, v12

    .line 2985
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11f
    .catchall {:try_start_95 .. :try_end_11f} :catchall_c0

    goto :goto_126

    .line 2991
    :goto_120
    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v1, v13, v14}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    .line 2992
    throw v0

    .line 2991
    :cond_126
    :goto_126
    iget-object v0, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    goto :goto_12e

    :cond_12c
    move/from16 p1, v2

    :goto_12e
    return p1
.end method

.method public final setBiometricState(ILcom/android/internal/widget/LockPatternUtils;II)V
    .registers 5

    .line 2921
    invoke-virtual {p2, p3, p4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    return-void
.end method

.method public setForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1494
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 1498
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_12

    const-string p2, ""

    .line 1501
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 1504
    :cond_12
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1506
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1509
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1510
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordForbiddenStrings"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1513
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1514
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1515
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda61;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_60

    goto :goto_68

    :catch_60
    const-string p0, "PasswordPolicy"

    const-string/jumbo p1, "setForbiddenStrings() failed."

    .line 1523
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    return v0
.end method

.method public final setHomeAndRecentKey(I)V
    .registers 7

    const-string v0, "PasswordPolicy"

    .line 1239
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 1241
    :try_start_8
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v3, :cond_12

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1245
    :cond_12
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v3, :cond_26

    if-lez p1, :cond_20

    const/high16 p1, 0x1200000

    .line 1247
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_26

    :cond_20
    const/4 p1, 0x0

    .line 1249
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1252
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez p1, :cond_31

    const-string/jumbo p1, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 1253
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_31
    const/4 v3, 0x3

    .line 1255
    invoke-interface {p1, v3}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    .line 1256
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/16 v3, 0x3e9

    invoke-interface {p1, v3}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    .line 1257
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/16 v3, 0xbb

    invoke-interface {p1, v3}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_44

    goto :goto_4a

    :catch_44
    const-string/jumbo p1, "setHomeAndRecentKey was failed"

    .line 1260
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :goto_4a
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-void
.end method

.method public setKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 3123
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 3124
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p3, :cond_2e

    const/16 v0, 0x10

    if-ne p3, v0, :cond_12

    goto :goto_2e

    .line 3142
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid features "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for container"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3132
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_3e

    .line 3133
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3134
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_3e
    return-void
.end method

.method public setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    .registers 5

    .line 3181
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSystemUser()V

    const-string p1, "PasswordPolicy"

    if-eqz p2, :cond_21

    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_21

    .line 3185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setKeyguardDisabledFeatures() which not supported "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3190
    :cond_21
    :try_start_21
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "keyguardDisabledFeatures"

    const/4 v0, 0x1

    .line 3191
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3190
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_38

    const-string/jumbo p0, "setKeyguardDisabledFeatures() true"

    .line 3192
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_38
    const-string/jumbo p0, "setKeyguardDisabledFeatures() false"

    .line 3194
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_3f

    goto :goto_49

    :catch_3f
    move-exception p0

    const-string/jumbo p2, "setKeyguardDisabledFeatures() failed"

    .line 3197
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    return-void
.end method

.method public setMaximumCharacterOccurrences(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    if-gez p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1593
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1594
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordMaximumCharacterOccurences"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1598
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1599
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1600
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda59;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda59;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_27
    return v0
.end method

.method public setMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 9

    .line 1927
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-gez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1933
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMaximumCharacterSequenceLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1937
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1938
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1939
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda58;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda58;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_2a
    return v0
.end method

.method public setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 8

    .line 1331
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-gez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1335
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordAttemptDeviceDisable"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1339
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1340
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1341
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda50;

    invoke-direct {v4, v2, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda50;-><init>(III)V

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1346
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1347
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMaximumFailedPasswordsForDisableSystemUI(II)V

    :cond_2e
    return v0
.end method

.method public final setMaximumFailedPasswordsForDisableSystemUI(II)V
    .registers 5

    .line 3273
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2788
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2789
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2790
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2791
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    if-gez p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1401
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1403
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1407
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1408
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1409
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda30;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda30;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_27
    return v0
.end method

.method public setMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    .registers 12

    .line 2879
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2880
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2881
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1f

    .line 2882
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2883
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JI)V

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1f
    return-void
.end method

.method public setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V
    .registers 3

    .line 1875
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v0, :cond_9

    .line 1876
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    .line 1877
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/common/KeyCodeMediator;->registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V

    :cond_9
    return-void
.end method

.method public setMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 9

    .line 1985
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-gez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1992
    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1995
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1996
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1997
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda48;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda48;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_2a
    return v0
.end method

.method public setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 2363
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2364
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->fingerprintAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PasswordPolicy"

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->irisAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo p0, "setMultifactorAuthenticationEnabled: two-factor authentication not available"

    .line 2365
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2368
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultifactorAuthenticationEnabled is called for user : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller uid - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enable - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "multifactorAuthEnabled"

    invoke-virtual {v0, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2372
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 2373
    invoke-virtual {p0, v3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMultifactorAuthenticationEnabledSystemUI(IZ)V

    .line 2374
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {v4, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6e

    move v1, v5

    :cond_6e
    if-nez v1, :cond_8b

    if-eqz p2, :cond_8b

    .line 2377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnforcePwdChange is called for user as Multifcator needs to be enforced for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    :cond_8b
    if-eqz v1, :cond_ba

    if-nez p2, :cond_ba

    if-nez v3, :cond_ba

    .line 2380
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 2381
    invoke-interface {p2, v3}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDoEnabled(I)Z

    move-result p2

    if-nez p2, :cond_a1

    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 2382
    invoke-interface {p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 2384
    :cond_a1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnforcePwdChange is called for DO case as Multifcator needs to be removed for : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    :cond_ba
    return v0
.end method

.method public final setMultifactorAuthenticationEnabledSystemUI(IZ)V
    .registers 5

    .line 3293
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 5

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-gez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 683
    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 684
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "passwordChangeTimeout"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v1, "PASSWORD"

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public setPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    .registers 12

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2707
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2708
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2709
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz p1, :cond_1f

    .line 2710
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda33;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JI)V

    invoke-virtual {p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1f
    return-void
.end method

.method public setPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2676
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2677
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2678
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2679
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2680
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 415
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 416
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p0, "PasswordPolicy"

    const-string/jumbo p1, "setPasswordLockDelay() failed. because not supported in Knox 2.0"

    .line 417
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2d
    const/4 v0, -0x1

    if-ge p2, v0, :cond_31

    return v1

    .line 424
    :cond_31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "unlockDelay"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 430
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 431
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(I)I

    move-result p1

    .line 432
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPasswordLockDelaySystemUI(II)V

    :cond_5b
    return p2
.end method

.method public final setPasswordLockDelaySystemUI(II)V
    .registers 5

    .line 3259
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2465
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2466
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2467
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2468
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2469
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2555
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2556
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2557
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2558
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2559
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2525
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2526
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2527
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2528
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2529
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2646
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2647
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2648
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2649
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2586
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2587
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2588
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2589
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2615
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2616
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2617
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2618
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2619
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2496
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2497
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2498
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2499
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 6

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V

    .line 2435
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2436
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2437
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    .line 2438
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1b
    return-void
.end method

.method public setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 2150
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2151
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2153
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2174
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordVisibilityEnabled"

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2178
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPasswordVisibilityEnabledSystemUI(IZ)V

    :cond_24
    return p1
.end method

.method public final setPasswordVisibilityEnabledSystemUI(IZ)V
    .registers 5

    .line 3300
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 4

    .line 1124
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1125
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setPwdChangeRequestedForInner(I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "android.uid.system:1000"

    .line 1205
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    .line 1208
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "passwordChangeRequested"

    .line 1210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getInnerAuthUserIdForDualDarDo()I

    move-result v3

    .line 1208
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez p1, :cond_22

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setHomeAndRecentKey(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_1d
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    goto :goto_22

    :catch_1d
    move-exception p1

    .line 1216
    :try_start_1e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_24

    const/4 v0, 0x0

    .line 1219
    :cond_22
    :goto_22
    monitor-exit p0

    return v0

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPwdChangeRequestedForUser(III)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string p1, "android.uid.system:1000"

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_78

    const/4 p1, 0x0

    .line 1133
    :try_start_7
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "passwordChangeRequested"

    .line 1135
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1133
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isDualDarDoEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    if-ne p2, v2, :cond_28

    if-eqz v0, :cond_27

    .line 1138
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForInner(I)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, p1

    .line 1141
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_2f

    .line 1142
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_2f
    if-eqz v0, :cond_4d

    .line 1145
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v1

    .line 1146
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    invoke-virtual {v3, p3, v1}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->setChangeRequestedAsUser(II)V

    .line 1147
    invoke-virtual {p0, p3, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedSystemUI(II)V

    if-nez p3, :cond_4d

    if-eqz p2, :cond_44

    const/4 v1, -0x1

    if-ne p2, v1, :cond_4d

    .line 1158
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isDualDarDoEnabled()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1160
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setHomeAndRecentKey(I)V

    :cond_4d
    if-ne p2, v2, :cond_5a

    .line 1166
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1169
    :cond_5a
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result p2

    if-nez p2, :cond_70

    .line 1171
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_70} :catch_72
    .catchall {:try_start_7 .. :try_end_70} :catchall_78

    :cond_70
    move p1, v0

    goto :goto_76

    :catch_72
    move-exception p2

    .line 1196
    :try_start_73
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_78

    .line 1199
    :goto_76
    monitor-exit p0

    return p1

    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setPwdChangeRequestedSystemUI(II)V
    .registers 5

    .line 3266
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 10

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_44

    .line 478
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_44

    .line 481
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordRequiredPattern"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 485
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v1, v2, :cond_33

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Lcom/samsung/android/knox/ContextInfo;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->addOwnerToStack(Lcom/samsung/android/knox/ContextInfo;)V

    .line 492
    :cond_33
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 493
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 494
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_43
    return v0

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return p0
.end method

.method public setResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;[B)Z
    .registers 6

    .line 2840
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2841
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2842
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1a

    .line 2843
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2844
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    .line 2849
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 1849
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1852
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "screenLockPatternVisibility"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1855
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1856
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ZI)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return v0
.end method

.method public setTrustAgentConfiguration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 12

    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "setTrustAgentConfiguration"

    .line 3587
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3589
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3590
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz p1, :cond_21

    .line 3591
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v6, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    invoke-virtual {p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_21
    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final unRegisterDexBlocker()V
    .registers 3

    .line 3449
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public unlock(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7

    .line 2319
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceDoPoOnlySecurityPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2321
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlock is called for user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller uid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PasswordPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2324
    :try_start_29
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v2, v3}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_35

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_39

    :catch_35
    move-exception v2

    .line 2328
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2330
    :cond_39
    :goto_39
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.intent.extra.user_handle"

    .line 2331
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2332
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2334
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    new-instance v4, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;

    invoke-direct {v4, p0, p1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;IILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "android.intent.extra.RETURN_RESULT"

    .line 2342
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5c

    const/4 p0, 0x1

    return p0

    :cond_5c
    return v1
.end method

.method public final updatePolicyCache()V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 322
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPolicyCache:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicyCache;->setChangeRequestedAsUser(II)V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 6

    .line 3226
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3227
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3230
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3231
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3232
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 3234
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPasswordLockDelaySystemUI(II)V

    .line 3235
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedSystemUI(II)V

    .line 3236
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->initMaximumFailedPasswordsForDisableSystemUI(I)V

    .line 3237
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->excludeExternalStorageForFailedPasswordsWipeSystemUI(IZ)V

    .line 3238
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMultifactorAuthenticationEnabled(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMultifactorAuthenticationEnabledSystemUI(IZ)V

    .line 3239
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPasswordVisibilityEnabledSystemUI(IZ)V

    .line 3240
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getSuperLockState(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_56

    move v1, v3

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5c

    move v2, v3

    .line 3241
    :cond_5c
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    return-void
.end method
