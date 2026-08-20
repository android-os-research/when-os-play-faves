.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/biometrics/sensors/BiometricUtils<",
        "Landroid/hardware/fingerprint/Fingerprint;",
        ">;"
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_ADD_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INTENT_ACTION_REMOVE_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INTENT_ACTION_RESET_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INTENT_DEFAULT_VERIFICATION_TYPE:Ljava/lang/String; = "Device Credential"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INTENT_KEY_FINGERPRINT_INDEX:Ljava/lang/String; = "fingerIndex"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INTENT_KEY_VERIFICATION_TYPE:Ljava/lang/String; = "verificationType"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LEGACY_FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field public static mMaxTemplateNumber:I

.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mIsBootComplete:Z

.field public mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$afbSPba48wMybvOJMAJFU2YnY-s(Landroid/content/Intent;ILandroid/content/Context;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->lambda$semSendTemplateChangedBroadCast$0(Landroid/content/Intent;ILandroid/content/Context;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    .line 156
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 2

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 5

    .line 129
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 133
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_39

    if-nez p1, :cond_2f

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings_fingerprint_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_2f
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    :cond_39
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 140
    monitor-exit v0

    return-object p0

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .registers 2

    const-string/jumbo v0, "settings_fingerprint.xml"

    .line 151
    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p0

    return-object p0
.end method

.method public static isKnownAcquiredCode(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isKnownErrorCode(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic lambda$semSendTemplateChangedBroadCast$0(Landroid/content/Intent;ILandroid/content/Context;I)V
    .registers 7

    const-string v0, "FingerprintService"

    const-string v1, "fingerIndex"

    .line 413
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "verificationType"

    const-string v2, "Device Credential"

    .line 414
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 415
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 416
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    :try_start_19
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 419
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_62

    const-string p3, "["

    if-eqz p2, :cond_46

    .line 420
    :try_start_27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is sent with fingerId "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 423
    :cond_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is sent"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_61} :catch_62

    goto :goto_7c

    :catch_62
    move-exception p0

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "semSendTemplateChangedBroadCast: failed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    return-void
.end method

.method public static resetForTest()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 286
    :try_start_4
    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    .line 287
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static declared-synchronized semGetMaxTemplateNumber()I
    .registers 7

    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    monitor-enter v0

    .line 292
    :try_start_3
    sget v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mMaxTemplateNumber:I

    if-nez v1, :cond_3b

    const/4 v1, 0x4

    .line 293
    sput v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mMaxTemplateNumber:I

    const-string/jumbo v1, "google_touch_side,settings=3,navi=1"

    const-string v2, ","

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 296
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_3b

    aget-object v4, v1, v3

    const-string/jumbo v5, "settings="

    .line 297
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3f

    if-eqz v5, :cond_38

    const/16 v5, 0x9

    .line 299
    :try_start_24
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mMaxTemplateNumber:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f
    .catchall {:try_start_24 .. :try_end_2e} :catchall_3f

    goto :goto_38

    :catch_2f
    move-exception v4

    :try_start_30
    const-string v5, "FingerprintService"

    const-string/jumbo v6, "semGetMaxTemplateNumber: failed to read sensor config"

    .line 302
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 307
    :cond_3b
    sget v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mMaxTemplateNumber:I
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3f

    monitor-exit v0

    return v1

    :catchall_3f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static semGetSensorType()I
    .registers 4

    .line 377
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    if-eq v0, v2, :cond_12

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    return v1

    .line 379
    :cond_13
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_18

    return v3

    :cond_18
    return v2

    :cond_19
    const/4 v0, 0x5

    return v0
.end method

.method public static semGetUserWithEnrolledFingerprint(Landroid/content/Context;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 453
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 454
    invoke-static {p0, v2}, Lcom/android/server/biometrics/Utils;->useOwnerBiometrics(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_11

    .line 457
    :cond_2c
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 458
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 459
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 462
    :cond_42
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_60

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User with enrolled fingerprint: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-object v0
.end method

.method public static semHasPrivilegedFlag(Landroid/os/Bundle;I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    const-string/jumbo v1, "sem_privileged_attr"

    .line 443
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static semIsAuthenticationFailedReasonEvent(I)Z
    .registers 2
    .param p0    # I
        .annotation build Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintInternalEvent;
        .end annotation
    .end param

    const v0, 0x9c40

    if-lt p0, v0, :cond_c

    const v0, 0xc34f

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static semIsInternalClientFreeEvent(II)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_5

    return v0

    :cond_5
    const/16 p0, 0x4e21

    if-eq p1, p0, :cond_16

    const/16 p0, 0x4e22

    if-eq p1, p0, :cond_16

    const/16 p0, 0x7531

    if-eq p1, p0, :cond_16

    const/16 p0, 0x7532

    if-eq p1, p0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public static semIsQualityFailedEvent(II)Z
    .registers 3

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_14

    goto :goto_12

    :pswitch_5
    const/16 p0, 0x3e9

    if-eq p1, p0, :cond_11

    const/16 p0, 0x3eb

    if-eq p1, p0, :cond_11

    const/16 p0, 0x3ea

    if-ne p1, p0, :cond_12

    :cond_11
    :pswitch_11
    return v0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method

.method public static semIsRequestCommandEvent(II)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_5

    return v0

    :cond_5
    const/16 p0, 0x2718

    if-eq p1, p0, :cond_e

    const/16 p0, 0x2719

    if-eq p1, p0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static semIsSkipEvent(II)Z
    .registers 3

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    const/16 p0, 0x2714

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static semUpdateVendorInfo(II)I
    .registers 3

    const/4 v0, 0x6

    if-ne p0, v0, :cond_b

    const p0, 0x11171

    if-ne p1, p0, :cond_b

    const/16 p0, 0x2714

    return p0

    :cond_b
    return p1
.end method


# virtual methods
.method public bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 4

    .line 76
    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 5

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 168
    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendAddTemplateBroadcast(Landroid/content/Context;II)V

    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFingerprintName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .registers 4

    .line 484
    invoke-virtual {p0, p1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 486
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    .line 487
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p3

    if-ne p3, p2, :cond_a

    .line 488
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p0, ""

    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    .registers 5

    .line 223
    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    if-nez v0, :cond_17

    .line 226
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    :cond_17
    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception p1

    .line 230
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 3

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInvalidationInProgress(Landroid/content/Context;I)Z
    .registers 3

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isInvalidationInProgress()Z

    move-result p0

    return p0
.end method

.method public onBootComplete()V
    .registers 3

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    .line 471
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    .line 474
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 475
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_c

    .line 477
    :cond_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    return-void
.end method

.method public putStateForUserForTest(ILcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 217
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 5

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 180
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendRemoveTemplateBroadcast(Landroid/content/Context;II)V

    .line 184
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogRemove(I)V

    .line 185
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "client"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6

    .line 192
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 196
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final semSendAddTemplateBroadcast(Landroid/content/Context;II)V
    .registers 6

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendTemplateChangedBroadCast(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method public final semSendRemoveTemplateBroadcast(Landroid/content/Context;II)V
    .registers 6

    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1e

    :cond_19
    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    :goto_1e
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendTemplateChangedBroadCast(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method public final semSendTemplateChangedBroadCast(Landroid/content/Context;Landroid/content/Intent;II)V
    .registers 6

    .line 412
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p4, p1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;ILandroid/content/Context;I)V

    .line 430
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    if-nez p1, :cond_1a

    .line 431
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    if-nez p1, :cond_14

    .line 432
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 434
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 436
    :cond_1a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1d
    return-void
.end method

.method public setInvalidationInProgress(Landroid/content/Context;IZ)V
    .registers 4

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->setInvalidationInProgress(Z)V

    return-void
.end method
