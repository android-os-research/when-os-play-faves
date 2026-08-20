.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_AUTH_COORDINATE_H:Ljava/lang/String; = "auth_coordinate_h"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_TOKEN:Ljava/lang/String; = "auth_coordinate_token"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_W:Ljava/lang/String; = "auth_coordinate_w"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_X:Ljava/lang/String; = "auth_coordinate_x"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_Y:Ljava/lang/String; = "auth_coordinate_y"

.field public static final blacklist BUNDLE_PREVIEW_ON_TOP:Ljava/lang/String; = "preview_on_top"

.field public static final blacklist BUNDLE_SET_SECURITY_LEVEL:Ljava/lang/String; = "security_level"

.field public static final blacklist BUNDLE_SET_TIMEOUT:Ljava/lang/String; = "set_timeout"

.field public static final blacklist BUNDLE_SKIP_WAKELOCK:Ljava/lang/String; = "skip_wakelock"

.field public static final blacklist BUNDLE_SUPPORT_AUTH_COORDINATE:Ljava/lang/String; = "support_auth_coordinate"

.field private static final blacklist DEBUG:Z

.field public static final blacklist EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final whitelist FACE_ACQUIRED_FAKE:I = 0x4

.field public static final whitelist FACE_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FACE_ACQUIRED_INVALID:I = 0x2

.field public static final whitelist FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final whitelist FACE_ACQUIRED_MISALIGNED:I = 0x7

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM:I = 0x3f5

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_LEFT:I = 0x3f4

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_RIGHT:I = 0x3f6

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_LEFT:I = 0x3f1

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_MIDDLE:I = 0x3f2

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_RIGHT:I = 0x3f3

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP:I = 0x3ef

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_LEFT:I = 0x3ee

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_RIGHT:I = 0x3f0

.field public static final blacklist FACE_ACQUIRED_ON_MASK:I = 0x3f9

.field public static final blacklist FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final blacklist FACE_ACQUIRED_PROXIMITY_ALERT:I = 0x3e9

.field public static final blacklist FACE_ACQUIRED_REVERSE_ORIENTATION:I = 0x3ea

.field public static final blacklist FACE_ACQUIRED_SURFACE_UPDATED:I = 0x7d1

.field public static final whitelist FACE_ACQUIRED_TOO_BIG:I = 0x5

.field public static final blacklist FACE_ACQUIRED_TOO_DARK:I = 0x3f7

.field public static final whitelist FACE_ACQUIRED_TOO_SMALL:I = 0x6

.field public static final blacklist FACE_ACQUIRED_WITH_GLASSES:I = 0x3f8

.field public static final blacklist FACE_ERROR_CAMERA_ACCESS_SETTING_OFF:I = 0x186a3

.field public static final whitelist FACE_ERROR_CAMERA_FAILURE:I = 0x2713

.field public static final whitelist FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x2715

.field public static final whitelist FACE_ERROR_CANCELED:I = 0x5

.field public static final blacklist FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final blacklist FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final whitelist FACE_ERROR_LOCKOUT:I = 0x2711

.field public static final whitelist FACE_ERROR_LOCKOUT_PERMANENT:I = 0x2712

.field public static final whitelist FACE_ERROR_NO_SPACE:I = 0x4

.field public static final blacklist FACE_ERROR_ON_MASK:I = 0x3ee

.field public static final blacklist FACE_ERROR_PPP_TIMEOUT:I = 0x3ed

.field public static final blacklist FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final whitelist FACE_ERROR_TIMEOUT:I = 0x3

.field public static final blacklist FACE_ERROR_TOO_DARK:I = 0x186a1

.field public static final blacklist FACE_ERROR_TOO_DARK_TO_ENROLL:I = 0x186a2

.field public static final whitelist FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final blacklist FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final blacklist FACE_OK:I = 0x0

.field public static final blacklist FLAG_ENROLL_WITHOUT_TOKEN:I = 0x1

.field public static final blacklist IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

.field private static final blacklist MSG_ACQUIRED:I = 0x65

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist PKG_NAME_DESKTOP_KEYGUARD:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final blacklist PKG_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final blacklist PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final blacklist PRIVILEGED_FLAG_USE_SETTING_FOR_SECURITY_LEVEL:I = 0x2

.field public static final blacklist SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final blacklist SECURITY_LEVEL_NONE:I = 0x0

.field public static final blacklist SECURITY_LEVEL_STRONG:I = 0x1

.field public static final blacklist SECURITY_LEVEL_WEAK:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemBioFaceManager"


# instance fields
.field private blacklist mAuthRequestId:J

.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private blacklist mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$museHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSepMappedError(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedError(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSepMappedHelp(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSepMappedHelp(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    .line 367
    nop

    .line 368
    const-string v0, "jdm"

    invoke-virtual {v0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    .line 367
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    .line 1411
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1412
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 1413
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 1414
    return-void
.end method

.method private blacklist authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .registers 15
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "b"    # Landroid/os/Bundle;

    .line 1439
    if-eqz p4, :cond_1d

    .line 1442
    if-eqz p2, :cond_12

    .line 1443
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1444
    const-string v0, "SemBioFaceManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void

    .line 1448
    :cond_12
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 1449
    return-void

    .line 1440
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist biometricPromptForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .registers 21
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "attr"    # Landroid/os/Bundle;

    .line 1467
    move-object v0, p0

    move-object v1, p1

    const-string v2, "SemBioFaceManager"

    const-string v3, "biometricPromptForDex"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v3, 0x104061e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1470
    .local v2, "strTitle":Ljava/lang/String;
    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const v4, 0x104061c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1472
    .local v3, "strCancel":Ljava/lang/String;
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 1473
    iput-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 1475
    new-instance v5, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 1476
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 1477
    invoke-virtual {v5, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1478
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v5

    .line 1484
    .local v5, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1485
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 1487
    invoke-virtual {v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v6

    .line 1489
    .local v6, "bp":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    move-object v13, v7

    .line 1490
    .local v13, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v7, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v13, v7}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1499
    new-instance v11, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    invoke-direct {v11, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 1535
    .local v11, "authenticationCallback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    const/4 v7, 0x0

    if-eqz v1, :cond_69

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v8

    move-object v12, v8

    goto :goto_6a

    :cond_69
    move-object v12, v7

    .line 1537
    .local v12, "fidoRequestData":[B
    :goto_6a
    if-nez v1, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v7

    :goto_71
    move-object v8, v7

    .line 1539
    .local v8, "cryptoForBp":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    iget-object v7, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v7, v6

    move-object v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricPrompt;->semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V

    .line 1541
    return-void
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1404
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1391
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSepMappedAcquiredInfo(II)I
    .registers 5
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 1065
    move v0, p0

    .line 1067
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_84

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedAcquiredInfo: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83

    .line 1160
    :pswitch_28
    packed-switch p1, :pswitch_data_b6

    :pswitch_2b
    goto :goto_52

    .line 1198
    :pswitch_2c
    const/16 v0, 0x3f9

    goto :goto_52

    .line 1195
    :pswitch_2f
    const/16 v0, 0x3f8

    .line 1196
    goto :goto_52

    .line 1192
    :pswitch_32
    const/16 v0, 0x3f7

    .line 1193
    goto :goto_52

    .line 1183
    :pswitch_35
    const/16 v0, 0x3f6

    .line 1184
    goto :goto_52

    .line 1180
    :pswitch_38
    const/16 v0, 0x3f5

    .line 1181
    goto :goto_52

    .line 1177
    :pswitch_3b
    const/16 v0, 0x3f4

    .line 1178
    goto :goto_52

    .line 1174
    :pswitch_3e
    const/16 v0, 0x3f3

    .line 1175
    goto :goto_52

    .line 1171
    :pswitch_41
    const/16 v0, 0x3f1

    .line 1172
    goto :goto_52

    .line 1168
    :pswitch_44
    const/16 v0, 0x3f0

    .line 1169
    goto :goto_52

    .line 1165
    :pswitch_47
    const/16 v0, 0x3ef

    .line 1166
    goto :goto_52

    .line 1162
    :pswitch_4a
    const/16 v0, 0x3ee

    .line 1163
    goto :goto_52

    .line 1189
    :pswitch_4d
    const/4 v0, 0x4

    .line 1190
    goto :goto_52

    .line 1186
    :pswitch_4f
    const/16 v0, 0x3e9

    .line 1187
    nop

    .line 1201
    :goto_52
    goto :goto_83

    .line 1156
    :pswitch_53
    const/4 v0, 0x3

    .line 1157
    goto :goto_83

    .line 1153
    :pswitch_55
    goto :goto_83

    .line 1149
    :pswitch_56
    const/4 v0, 0x2

    .line 1150
    goto :goto_83

    .line 1145
    :pswitch_58
    const/4 v0, 0x7

    .line 1146
    goto :goto_83

    .line 1141
    :pswitch_5a
    const/4 v0, 0x7

    .line 1142
    goto :goto_83

    .line 1137
    :pswitch_5c
    const/4 v0, 0x7

    .line 1138
    goto :goto_83

    .line 1133
    :pswitch_5e
    move v0, p1

    .line 1134
    goto :goto_83

    .line 1127
    :pswitch_60
    move v0, p1

    .line 1128
    goto :goto_83

    .line 1121
    :pswitch_62
    const/4 v0, 0x1

    .line 1122
    goto :goto_83

    .line 1117
    :pswitch_64
    const/4 v0, 0x7

    .line 1118
    goto :goto_83

    .line 1113
    :pswitch_66
    const/4 v0, 0x2

    .line 1114
    goto :goto_83

    .line 1109
    :pswitch_68
    const/4 v0, 0x2

    .line 1110
    goto :goto_83

    .line 1105
    :pswitch_6a
    const/16 v0, 0x3f1

    .line 1106
    goto :goto_83

    .line 1101
    :pswitch_6d
    const/16 v0, 0x3f3

    .line 1102
    goto :goto_83

    .line 1097
    :pswitch_70
    const/16 v0, 0x3f5

    .line 1098
    goto :goto_83

    .line 1093
    :pswitch_73
    const/16 v0, 0x3ef

    .line 1094
    goto :goto_83

    .line 1089
    :pswitch_76
    const/4 v0, 0x6

    .line 1090
    goto :goto_83

    .line 1085
    :pswitch_78
    const/4 v0, 0x5

    .line 1086
    goto :goto_83

    .line 1081
    :pswitch_7a
    const/16 v0, 0x3f7

    .line 1082
    goto :goto_83

    .line 1077
    :pswitch_7d
    const/4 v0, 0x3

    .line 1078
    goto :goto_83

    .line 1073
    :pswitch_7f
    const/4 v0, 0x3

    .line 1074
    goto :goto_83

    .line 1069
    :pswitch_81
    const/4 v0, 0x0

    .line 1070
    nop

    .line 1208
    :goto_83
    return v0

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7f
        :pswitch_7d
        :pswitch_7a
        :pswitch_78
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
        :pswitch_5c
        :pswitch_5a
        :pswitch_58
        :pswitch_56
        :pswitch_55
        :pswitch_53
        :pswitch_28
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x3e9
        :pswitch_4f
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_2b
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method private static blacklist getSepMappedError(I)I
    .registers 4
    .param p0, "errCode"    # I

    .line 1544
    const/4 v0, 0x2

    .line 1545
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_2a

    .line 1569
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1560
    :pswitch_1d
    const/16 v0, 0xa

    .line 1561
    goto :goto_29

    .line 1565
    :pswitch_20
    const/16 v0, 0x2711

    .line 1566
    goto :goto_29

    .line 1555
    :pswitch_23
    const/4 v0, 0x5

    .line 1556
    goto :goto_29

    .line 1551
    :pswitch_25
    const/4 v0, 0x3

    .line 1552
    goto :goto_29

    .line 1547
    :pswitch_27
    const/4 v0, 0x1

    .line 1548
    nop

    .line 1572
    :goto_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_4
        :pswitch_25
        :pswitch_4
        :pswitch_23
        :pswitch_4
        :pswitch_20
        :pswitch_4
        :pswitch_20
        :pswitch_1d
        :pswitch_4
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist getSepMappedError(II)I
    .registers 5
    .param p0, "errCode"    # I
    .param p1, "vendorCode"    # I

    .line 1216
    move v0, p0

    .line 1218
    .local v0, "ret":I
    packed-switch p0, :pswitch_data_68

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 1300
    :pswitch_27
    const/4 v0, 0x2

    .line 1301
    goto :goto_67

    .line 1296
    :pswitch_29
    const/16 v0, 0xa

    .line 1297
    goto :goto_67

    .line 1292
    :pswitch_2c
    const/4 v0, 0x1

    .line 1293
    goto :goto_67

    .line 1288
    :pswitch_2e
    const/4 v0, 0x2

    .line 1289
    goto :goto_67

    .line 1284
    :pswitch_30
    const/16 v0, 0xa

    .line 1285
    goto :goto_67

    .line 1280
    :pswitch_33
    const/16 v0, 0x2712

    .line 1281
    goto :goto_67

    .line 1248
    :pswitch_36
    sparse-switch p1, :sswitch_data_88

    goto :goto_57

    .line 1274
    :sswitch_3a
    const v0, 0x186a3

    goto :goto_57

    .line 1271
    :sswitch_3e
    const v0, 0x186a2

    .line 1272
    goto :goto_57

    .line 1268
    :sswitch_42
    const v0, 0x186a1

    .line 1269
    goto :goto_57

    .line 1265
    :sswitch_46
    const/16 v0, 0x3ee

    .line 1266
    goto :goto_57

    .line 1262
    :sswitch_49
    const/16 v0, 0x3ed

    .line 1263
    goto :goto_57

    .line 1259
    :sswitch_4c
    const/16 v0, 0x2715

    .line 1260
    goto :goto_57

    .line 1256
    :sswitch_4f
    const/16 v0, 0x2713

    .line 1257
    goto :goto_57

    .line 1253
    :sswitch_52
    const/4 v0, 0x2

    .line 1254
    goto :goto_57

    .line 1250
    :sswitch_54
    const/16 v0, 0x3ec

    .line 1251
    nop

    .line 1277
    :goto_57
    goto :goto_67

    .line 1244
    :pswitch_58
    const/16 v0, 0x2711

    .line 1245
    goto :goto_67

    .line 1240
    :pswitch_5b
    const/4 v0, 0x2

    .line 1241
    goto :goto_67

    .line 1236
    :pswitch_5d
    const/4 v0, 0x5

    .line 1237
    goto :goto_67

    .line 1232
    :pswitch_5f
    const/4 v0, 0x4

    .line 1233
    goto :goto_67

    .line 1228
    :pswitch_61
    const/4 v0, 0x3

    .line 1229
    goto :goto_67

    .line 1224
    :pswitch_63
    const/4 v0, 0x2

    .line 1225
    goto :goto_67

    .line 1220
    :pswitch_65
    const/4 v0, 0x1

    .line 1221
    nop

    .line 1308
    :goto_67
    return v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65
        :pswitch_63
        :pswitch_61
        :pswitch_5f
        :pswitch_5d
        :pswitch_5b
        :pswitch_58
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_29
        :pswitch_27
    .end packed-switch

    :sswitch_data_88
    .sparse-switch
        0x3e9 -> :sswitch_54
        0x3ea -> :sswitch_52
        0x3eb -> :sswitch_4f
        0x3ec -> :sswitch_4c
        0x3ed -> :sswitch_49
        0x3ee -> :sswitch_46
        0x186a1 -> :sswitch_42
        0x186a2 -> :sswitch_3e
        0x186a3 -> :sswitch_3a
    .end sparse-switch
.end method

.method private static blacklist getSepMappedHelp(I)I
    .registers 4
    .param p0, "errCode"    # I

    .line 1576
    const/4 v0, 0x0

    .line 1577
    .local v0, "ret":I
    nop

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSepMappedError: No data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return v0
.end method

.method private blacklist isDexMode(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1452
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1453
    .local v0, "desktopModeManaer":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1454
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 1456
    :cond_18
    return v1
.end method

.method private blacklist isKeyguard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1461
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.samsung.desktopsystemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist sendAcquiredResult(ILjava/lang/String;)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "helpMsg"    # Ljava/lang/String;

    .line 1372
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_e

    .line 1373
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1374
    if-eqz p2, :cond_e

    .line 1375
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1378
    :cond_e
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 1367
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1369
    :cond_7
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .registers 3
    .param p1, "result"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 1361
    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 1363
    :cond_7
    return-void
.end method

.method private blacklist sendErrorResult(ILjava/lang/String;)V
    .registers 4
    .param p1, "errMsgId"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    .line 1354
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1356
    :cond_7
    return-void
.end method

.method public static blacklist setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1421
    if-nez p1, :cond_3

    .line 1422
    return-void

    .line 1425
    :cond_3
    :try_start_3
    const-string v0, "DISPLAY_TYPE"

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 1428
    goto :goto_2f

    .line 1426
    :catch_11
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 711
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 712
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_2a

    .line 713
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2a

    .line 714
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 716
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public blacklist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .registers 19
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;

    .line 763
    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 764
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticateForDex(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 765
    return-void

    .line 768
    :cond_19
    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 769
    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 771
    return-void

    .line 773
    :cond_30
    return-void
.end method

.method public whitelist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .registers 18
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p6, :cond_e

    .line 746
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 747
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_e

    .line 748
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    .line 751
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_e
    move-object v10, p0

    iget-object v1, v10, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v8, v0

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 752
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .registers 10
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .line 802
    const-string v0, "SemBioFaceManager"

    const-string v1, "enroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .registers 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p5, "faceView"    # Landroid/view/View;

    .line 793
    const-string v0, "SemBioFaceManager"

    const-string v1, "enroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEnrolledFaces(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 900
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 902
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSecurityLevel()I
    .registers 2

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityLevel(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1053
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_d

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    .line 1054
    .local v1, "isKeyguard":Z
    :goto_d
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetSecurityLevel(Z)I

    move-result v0

    return v0

    .line 1057
    :cond_1c
    return v0
.end method

.method public blacklist hasDisabledFaces()Z
    .registers 2

    .line 935
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnrolledFaces()Z
    .registers 2

    .line 924
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 925
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    .line 927
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnrolledFaces(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 953
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 954
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0

    .line 956
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHardwareDetected()Z
    .registers 2

    .line 967
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 968
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0

    .line 970
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist postEnroll()I
    .registers 3

    .line 843
    const-string v0, "SemBioFaceManager"

    const-string v1, "postEnroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preEnroll()J
    .registers 3

    .line 814
    const-string v0, "SemBioFaceManager"

    const-string v1, "preEnroll() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    .line 831
    const-string v0, "SemBioFaceManager"

    const-string v1, "preEnroll() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .registers 6
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 868
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "remove() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public blacklist remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .registers 5
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 874
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "remove() : this is not used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method public blacklist rename(IILjava/lang/String;)V
    .registers 6
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 887
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "rename() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method public blacklist resetAuthenticationTimeout()Z
    .registers 3

    .line 1036
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "resetAuthenticationTimeout() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setActiveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 855
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "setActiveUser() : this is not used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void
.end method
