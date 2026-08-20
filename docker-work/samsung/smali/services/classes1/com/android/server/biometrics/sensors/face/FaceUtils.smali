.class public Lcom/android/server/biometrics/sensors/face/FaceUtils;
.super Ljava/lang/Object;
.source "FaceUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/biometrics/sensors/BiometricUtils<",
        "Landroid/hardware/face/Face;",
        ">;"
    }
.end annotation


# static fields
.field public static final LEGACY_FACE_FILE:Ljava/lang/String; = "settings_face.xml"

.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/face/FaceUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/face/FaceUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    .line 85
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .registers 2

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .registers 5

    .line 58
    sget-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 60
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    .line 62
    :cond_e
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_39

    if-nez p1, :cond_2f

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings_face_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_2f
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    :cond_39
    sget-object p1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 69
    monitor-exit v0

    return-object p0

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .registers 2

    const-string/jumbo v0, "settings_face.xml"

    .line 80
    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 4

    .line 33
    check-cast p3, Landroid/hardware/face/Face;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V
    .registers 4

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

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
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;
    .registers 5

    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    if-nez v0, :cond_17

    .line 131
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/face/FaceUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_17
    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception p1

    .line 135
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 3

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInvalidationInProgress(Landroid/content/Context;I)Z
    .registers 3

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isInvalidationInProgress()Z

    move-result p0

    return p0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 4

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6

    .line 105
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 109
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setInvalidationInProgress(Landroid/content/Context;IZ)V
    .registers 4

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->setInvalidationInProgress(Z)V

    return-void
.end method
