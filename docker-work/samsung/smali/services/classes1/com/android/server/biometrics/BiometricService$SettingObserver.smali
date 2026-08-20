.class public Lcom/android/server/biometrics/BiometricService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BiometricService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingObserver"
.end annotation


# static fields
.field public static final BIOMETRIC_FP_BIO_START_ENABLED:Ljava/lang/String; = "sem_biometric_fp_bio_start_enabled"

.field public static final DEFAULT_ALWAYS_REQUIRE_CONFIRMATION:Z = false

.field public static final DEFAULT_APP_ENABLED:Z = true

.field public static final DEFAULT_KEYGUARD_ENABLED:Z = true


# instance fields
.field public final BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

.field public final BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

.field public final BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

.field public final FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final mBiometricEnabledForApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mBiometricEnabledOnKeyguard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFaceAlwaysRequireConfirmation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mUseLegacyFaceOnlySettings:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p2, "face_unlock_keyguard_enabled"

    .line 232
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    const-string p2, "face_unlock_app_enabled"

    .line 234
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    const-string p2, "face_unlock_always_require_confirmation"

    .line 238
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    const-string p2, "biometric_keyguard_enabled"

    .line 242
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    const-string p2, "biometric_app_enabled"

    .line 244
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    const-string/jumbo p2, "sem_biometric_fp_bio_start_enabled"

    .line 251
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 257
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 258
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 259
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 270
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.fingerprint"

    .line 273
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "android.hardware.biometrics.face"

    .line 275
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 278
    sget p3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v0, 0x1d

    if-gt p3, v0, :cond_71

    if-eqz p1, :cond_71

    if-nez p2, :cond_71

    const/4 p1, 0x1

    goto :goto_72

    :cond_71
    const/4 p1, 0x0

    :goto_72
    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    return-void
.end method


# virtual methods
.method public getConfirmationAlwaysRequired(II)Z
    .registers 4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 404
    :cond_6
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    .line 405
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 409
    :cond_18
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledForApps(I)Z
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 391
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 392
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    goto :goto_1c

    .line 394
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 397
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledOnKeyguard(I)Z
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 380
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 381
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    goto :goto_1c

    .line 383
    :cond_17
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 386
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public notifyEnabledOnKeyguardCallbacks(I)V
    .registers 8

    .line 417
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    const/4 v1, 0x0

    .line 418
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 419
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 419
    invoke-virtual {v2, v3, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->notify(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_27
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 9

    .line 328
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 329
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "face_unlock_keyguard_enabled"

    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1b

    move v1, v2

    :cond_1b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_da

    if-nez p1, :cond_da

    .line 336
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    goto/16 :goto_da

    .line 338
    :cond_2f
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 339
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_unlock_app_enabled"

    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_48

    move v1, v2

    :cond_48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_da

    .line 344
    :cond_51
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 345
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "face_unlock_always_require_confirmation"

    invoke-static {p0, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_6a

    move v1, v2

    :cond_6a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_da

    .line 350
    :cond_72
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 351
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "biometric_keyguard_enabled"

    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_8b

    move v1, v2

    :cond_8b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-ne p3, p2, :cond_da

    if-nez p1, :cond_da

    .line 358
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    goto :goto_da

    .line 360
    :cond_9e
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 361
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "biometric_app_enabled"

    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_b7

    move v1, v2

    :cond_b7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_da

    .line 366
    :cond_bf
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_da

    .line 368
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "sem_biometric_fp_bio_start_enabled"

    invoke-static {p0, p1, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_d3

    move v1, v2

    .line 373
    :cond_d3
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->setFpBioStar(Z)V

    :cond_da
    :goto_da
    return-void
.end method

.method public updateContentObserver()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 288
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 293
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_28

    .line 298
    :cond_1a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 302
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    :goto_28
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 313
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    if-eqz v0, :cond_4d

    .line 314
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 318
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sem_biometric_fp_bio_start_enabled"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4a

    const/4 v2, 0x1

    :cond_4a
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->setFpBioStar(Z)V

    :cond_4d
    return-void
.end method
