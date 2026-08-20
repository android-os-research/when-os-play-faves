.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;,
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED:I = 0x1

.field public static final blacklist DEV_OK:I = -0xffff68

.field public static final blacklist DISABLE:I = 0x1

.field public static final blacklist ENABLE:I = 0x0

.field public static final blacklist ENG_KERNEL:I = 0x0

.field public static final blacklist ERRORBYTE_EM_SERVICE:[B

.field public static final blacklist ERRORBYTE_INVAILD_PARAM:[B

.field public static final blacklist ERRORBYTE_NOT_INSATALLED:[B

.field public static final blacklist ERRORBYTE_NOT_SUPPORTED:[B

.field public static final blacklist ERRORBYTE_NO_PERMISSION:[B

.field public static final blacklist ERRORINTARR_EM_SERVICE:[I

.field public static final blacklist ERRORINTARR_INTERNAL:[I

.field public static final blacklist ERRORINTARR_NOT_INSTALLED:[I

.field public static final blacklist ERRORINTARR_NOT_SUPPORTED:[I

.field public static final blacklist ERRORINTARR_NO_PERMISSION:[I

.field public static final blacklist ERRORSTRING_EM_SERVICE:Ljava/lang/String; = "ERROR_EM_SERVICE"

.field public static final blacklist ERRORSTRING_INTERNAL:Ljava/lang/String; = "ERROR_INTERNAL"

.field public static final blacklist ERRORSTRING_NOT_INSTALLED:Ljava/lang/String; = "ERROR_TOKEN_NOT_INSATLLED"

.field public static final blacklist ERRORSTRING_NO_PERMISSION:Ljava/lang/String; = "ERROR_NO_PERMISSION"

.field public static final blacklist ERROR_COUNTER:I = -0xfffffec

.field public static final blacklist ERROR_EM_SERVICE:I = -0x3e8

.field public static final blacklist ERROR_INVALID_ESI:I = -0x578

.field public static final blacklist ERROR_INVALID_PARAM:I = -0x6a4

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0x640

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x514

.field public static final blacklist ERROR_TUC_ZERO:I = -0x5dc

.field public static final blacklist MODE_CUST_KERNEL:I = 0x3

.field public static final blacklist MODE_DEBUG_LOG:I = 0x2

.field public static final blacklist MODE_ENG_KERNEL:I = 0x0

.field public static final blacklist MODE_KNOX_TEST:I = 0x4

.field public static final blacklist MODE_TEST_ENV:I = 0x1

.field public static final blacklist MODE_USB_DEBUG:I = 0x1

.field public static final blacklist NATIVE_NO_PERMISSION:I = -0xffffffc

.field public static final blacklist NATIVE_SUCCESS:I = 0x0

.field public static final blacklist NOK:I = 0x0

.field public static final blacklist NOT_ALLOWED:I = 0x0

.field public static final blacklist OK:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "engmode_java_manager"

.field public static final blacklist USB_DEBUG:I = 0x1

.field public static final blacklist USB_DEBUG_ALLOWED:I = 0x1

.field public static final blacklist USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private blacklist mCallerUid:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

.field private blacklist mPkgMgr:Landroid/content/pm/PackageManager;

.field private final blacklist mPkgName:Ljava/lang/String;

.field private blacklist mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

.field private blacklist mSignature:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerUid(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignature(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    .line 52
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    .line 53
    new-array v1, v0, [B

    const/4 v2, -0x2

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    .line 54
    new-array v1, v0, [B

    const/4 v2, -0x3

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    .line 55
    new-array v1, v0, [B

    const/4 v2, -0x4

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_INSATALLED:[B

    .line 69
    new-array v1, v0, [I

    const v2, -0xfffffff

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_INTERNAL:[I

    .line 70
    new-array v1, v0, [I

    const v2, -0xffffffe

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    .line 71
    new-array v1, v0, [I

    const v2, -0xffffffd

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NO_PERMISSION:[I

    .line 72
    new-array v1, v0, [I

    const v2, -0xffffffc

    aput v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_SUPPORTED:[I

    .line 73
    new-array v0, v0, [I

    const v1, -0xffffffb

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_INSTALLED:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 282
    const-string v0, "engmode_java_manager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    .line 285
    new-instance v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;-><init>(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    .line 288
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 289
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    .line 290
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2e

    .line 297
    goto :goto_3f

    .line 291
    :catch_2e
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 293
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    .line 294
    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    .line 295
    const-string v2, "PackageManager Exception occued"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    const-string v2, ", "

    const-string v3, "("

    if-eqz v1, :cond_78

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") connects to EngineeringModeNative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 302
    :cond_78
    nop

    .line 303
    const-string v1, "EngineeringModeService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") connects to EngineeringModeService.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_b1
    return-void
.end method


# virtual methods
.method public blacklist essCommand(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 800
    const-string v0, "engmode_java_manager"

    const-string v1, "essCommand is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 804
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_commandForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_18

    return-object v0

    .line 805
    :cond_16
    const/4 v0, 0x0

    return-object v0

    .line 810
    :catch_18
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 807
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 809
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist getExpiryDate()Ljava/lang/String;
    .registers 5

    .line 516
    const-string v0, "engmode_java_manager"

    const-string v1, "getExpiryDate() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 520
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getExpiryDate()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :cond_17
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getExpiryDate()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1d} :catch_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object v0

    .line 528
    :catch_1e
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    return-object v1

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_23
    move-exception v2

    .line 524
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 526
    return-object v1
.end method

.method public blacklist getID()[B
    .registers 4

    .line 491
    const-string v0, "engmode_java_manager"

    const-string v1, "getID() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 495
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getID()[B

    move-result-object v0

    return-object v0

    .line 496
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getID()[B

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object v0

    .line 503
    :catch_1d
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 499
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 501
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist getLastTokenStatus()Ljava/lang/String;
    .registers 5

    .line 1024
    const-string v0, "ERROR_EM_SERVICE"

    const-string v1, "engmode_java_manager"

    const-string v2, "getLastTokenStatus() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1028
    const/4 v0, 0x0

    return-object v0

    .line 1029
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getLastTokenStatus()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_19} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    return-object v0

    .line 1036
    :catch_1a
    move-exception v1

    .line 1037
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1038
    return-object v0

    .line 1031
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 1032
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1034
    return-object v0
.end method

.method public blacklist getModes()[I
    .registers 4

    .line 972
    const-string v0, "engmode_java_manager"

    const-string v1, "getModes() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 976
    const/4 v0, 0x0

    return-object v0

    .line 977
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getModes()[I

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v0

    .line 984
    :catch_18
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 986
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1

    .line 979
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 980
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 982
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v0
.end method

.method public blacklist getNumOfModes()I
    .registers 5

    .line 542
    const-string v0, "engmode_java_manager"

    const-string v1, "getNumOfModes() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v1, -0x3e8

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 546
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getNumOfModes()I

    move-result v0

    return v0

    .line 547
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getNumOfModes()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    return v0

    .line 554
    :catch_1f
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    return v1

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v2

    .line 550
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 552
    return v1
.end method

.method public blacklist getPriorityTime()[B
    .registers 4

    .line 945
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "setPriorityTime() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 949
    const/4 v0, 0x0

    return-object v0

    .line 950
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getPriorityTime()[B

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    return-object v0

    .line 957
    :catch_19
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 952
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_20
    move-exception v1

    .line 953
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 955
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 7
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B

    .line 362
    const-string v0, "engmode_java_manager"

    const-string v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 366
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 367
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_1d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    return-object v0

    .line 374
    :catch_1e
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v1

    .line 370
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 372
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .registers 8
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "validityCount"    # I

    .line 392
    const-string v0, "engmode_java_manager"

    const-string v1, "getRequestMsg() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 396
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 397
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object v0

    .line 404
    :catch_1d
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 400
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 402
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist getServerTime()J
    .registers 6

    .line 864
    const-string v0, "engmode_java_manager"

    const-string v1, "getServerTime() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-wide/16 v1, -0x3e8

    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 868
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getServerTime()J

    move-result-wide v0

    return-wide v0

    .line 869
    :cond_18
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getServerTime()J

    move-result-wide v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    return-wide v0

    .line 876
    :catch_1f
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 878
    return-wide v1

    .line 871
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v3

    .line 872
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to connect service"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 874
    return-wide v1
.end method

.method public blacklist getStatus(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 333
    const-string v0, "engmode_java_manager"

    const-string v1, "getStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v1, -0x3e8

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 337
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getStatus(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 338
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStatus(ILjava/lang/String;)I

    move-result v0
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_22} :catch_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    return v0

    .line 345
    :catch_23
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    return v1

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_28
    move-exception v2

    .line 341
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 343
    return v1
.end method

.method public blacklist getStringModes()Ljava/lang/String;
    .registers 5

    .line 998
    const-string v0, "ERROR_EM_SERVICE"

    const-string v1, "engmode_java_manager"

    const-string v2, "getStringModes() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1002
    const/4 v0, 0x0

    return-object v0

    .line 1003
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStringModes()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_19} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    return-object v0

    .line 1010
    :catch_1a
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1012
    return-object v0

    .line 1005
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 1006
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1008
    return-object v0
.end method

.method public blacklist getTUC(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 891
    const-string v0, "engmode_java_manager"

    const-string v1, "getTUC() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/16 v1, -0x3e8

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 895
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getTUC(I)I

    move-result v0

    return v0

    .line 896
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getTUC(I)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    return v0

    .line 903
    :catch_1f
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 905
    return v1

    .line 898
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v2

    .line 899
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 901
    return v1
.end method

.method public blacklist getToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .registers 8
    .param p1, "type"    # I
    .param p2, "bytes"    # [B

    .line 826
    const-string v0, "engmode_java_manager"

    const-string v1, "getToken() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;

    invoke-direct {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;-><init>()V

    .line 830
    .local v2, "epm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    if-nez p1, :cond_14

    .line 831
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0

    return-object v0

    .line 832
    :cond_14
    const/4 v3, 0x1

    if-ne p1, v3, :cond_34

    .line 833
    const/4 v3, 0x0

    .line 834
    .local v3, "token":[B
    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 835
    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getToken()[B

    move-result-object v4

    move-object v3, v4

    goto :goto_2f

    .line 837
    :cond_28
    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getToken()[B

    move-result-object v4

    move-object v3, v4

    .line 838
    :goto_2f
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0

    return-object v0

    .line 839
    .end local v3    # "token":[B
    :cond_34
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3c

    .line 840
    invoke-virtual {v2, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_3b} :catch_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_3e

    return-object v0

    .line 851
    .end local v2    # "epm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    :cond_3c
    nop

    .line 852
    return-object v1

    .line 848
    :catch_3e
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    return-object v1

    .line 843
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_43
    move-exception v2

    .line 844
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 846
    return-object v1
.end method

.method public blacklist installToken([B)I
    .registers 6
    .param p1, "token"    # [B

    .line 419
    const-string v0, "engmode_java_manager"

    const-string v1, "installToken() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v1, -0x3e8

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 423
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_installToken([B)I

    move-result v0

    return v0

    .line 424
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installToken([B)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_1f

    return v0

    .line 431
    :catch_1f
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    return v1

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v2

    .line 427
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 429
    return v1
.end method

.method public blacklist installTokenForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 783
    const-string v0, "engmode_java_manager"

    const-string v1, "installTokenForESS() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 787
    const/4 v0, 0x0

    return-object v0

    .line 788
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installTokenForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v0

    .line 793
    :catch_18
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 789
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 790
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 792
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist isConnected()Z
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 316
    return v1

    .line 318
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v0, :cond_f

    .line 319
    return v1

    .line 321
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTokenInstalled()I
    .registers 3

    .line 445
    const-string v0, "engmode_java_manager"

    const-string v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 449
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_isTokenInstalled()I

    move-result v0

    return v0

    .line 450
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->isTokenInstalled()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    return v0

    .line 451
    :catch_1d
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    const/16 v1, -0x3e8

    return v1
.end method

.method public blacklist makeDelTokenForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 681
    const-string v0, "engmode_java_manager"

    const-string v1, "makeDelTokenForESS() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 685
    const/4 v0, 0x0

    return-object v0

    .line 686
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeDelTokenForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v0

    .line 691
    :catch_18
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 693
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 687
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 688
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 690
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;

    .line 596
    const-string v0, "engmode_java_manager"

    const-string v1, "makeITLReq() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 600
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 601
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object v0

    .line 608
    :catch_1d
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 604
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 606
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist makeITLReqForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 732
    const-string v0, "engmode_java_manager"

    const-string v1, "makeITLReqForESS is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 736
    const/4 v0, 0x0

    return-object v0

    .line 737
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeITLReqForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v0

    .line 742
    :catch_18
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 739
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 741
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist makeTimeReq()[B
    .registers 5

    .line 1051
    const-string v0, "engmode_java_manager"

    const-string v1, "makeTimeReq() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1055
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeTimeReq()[B

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_16} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    .line 1056
    :cond_17
    return-object v1

    .line 1063
    :catch_18
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1065
    return-object v1

    .line 1058
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1d
    move-exception v2

    .line 1059
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1061
    return-object v1
.end method

.method public blacklist makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .registers 8
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "expiryDate"    # Ljava/lang/String;

    .line 653
    const-string v0, "engmode_java_manager"

    const-string v1, "makeTokenReq() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 657
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 658
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object v0

    .line 665
    :catch_1d
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 667
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v1

    .line 661
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 663
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist makeTokenReqForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 707
    const-string v0, "engmode_java_manager"

    const-string v1, "makeTokenReqForESS() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 711
    const/4 v0, 0x0

    return-object v0

    .line 712
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeTokenReqForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v0

    .line 717
    :catch_18
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v1

    .line 714
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 716
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist recoveryITL([B)I
    .registers 6
    .param p1, "recoveryMsg"    # [B

    .line 623
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "restoreITL() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/16 v1, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 627
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_recoveryITL([B)I

    move-result v0

    return v0

    .line 628
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->recoveryITL([B)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    return v0

    .line 635
    :catch_20
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    return v1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v2

    .line 631
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 633
    return v1
.end method

.method public blacklist recoveryITLForESS(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 757
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "recoveryITLForESS() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/16 v1, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 761
    const/4 v0, 0x0

    return v0

    .line 762
    :cond_14
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->recoveryITLForESS(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_1a} :catch_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    return v0

    .line 768
    :catch_1b
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 770
    return v1

    .line 763
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_20
    move-exception v2

    .line 764
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 766
    return v1
.end method

.method public blacklist removeToken()I
    .registers 5

    .line 465
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "removeToken() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v1, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 469
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_removeToken()I

    move-result v0

    return v0

    .line 470
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->removeToken()I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    return v0

    .line 477
    :catch_20
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    return v1

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v2

    .line 473
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 475
    return v1
.end method

.method public blacklist sendFuseCmd()I
    .registers 5

    .line 568
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "sendFuseCmd() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v1, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 572
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_sendFuseCmd()I

    move-result v0

    return v0

    .line 573
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->sendFuseCmd()I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    return v0

    .line 580
    :catch_20
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    return v1

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v2

    .line 576
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 578
    return v1
.end method

.method public blacklist setPriorityTime(Ljava/lang/String;)[B
    .registers 5
    .param p1, "time"    # Ljava/lang/String;

    .line 918
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "setPriorityTime() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 922
    const/4 v0, 0x0

    return-object v0

    .line 923
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->setPriorityTime(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    return-object v0

    .line 930
    :catch_19
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 932
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 925
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_20
    move-exception v1

    .line 926
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 928
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v0
.end method

.method public blacklist updateTime([B)[B
    .registers 6
    .param p1, "resTime"    # [B

    .line 1078
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "updateTime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1082
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_updateTime([B)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_17} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_19

    return-object v0

    .line 1083
    :cond_18
    return-object v1

    .line 1090
    :catch_19
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    return-object v1

    .line 1085
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 1086
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1088
    return-object v1
.end method
