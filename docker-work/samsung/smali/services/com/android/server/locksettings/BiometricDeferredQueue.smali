.class public Lcom/android/server/locksettings/BiometricDeferredQueue;
.super Ljava/lang/Object;
.source "BiometricDeferredQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;,
        Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricDeferredQueue"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFaceFinishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask$FinishCallback;

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mPendingResetLockoutsForFace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public static synthetic $r8$lambda$NVOS155OmHNmOC8ggOqRj8ASGps(Lcom/android/server/locksettings/BiometricDeferredQueue;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->lambda$processPendingLockoutResets$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gQ0-y7pyjFBgiTKcOo4ft0F-QTI(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/BiometricDeferredQueue;->lambda$addPendingLockoutResetForUser$1(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$pN5QSpeuHJelg-y54jRlG1BgjX4(Lcom/android/server/locksettings/BiometricDeferredQueue;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smrequestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/os/Handler;)V
    .registers 5

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    iput-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceFinishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask$FinishCallback;

    .line 136
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 138
    iput-object p3, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getGatekeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 3

    const-class v0, Lcom/android/server/locksettings/BiometricDeferredQueue;

    monitor-enter v0

    :try_start_3
    const-string v1, "android.service.gatekeeper.IGateKeeperService"

    .line 296
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "BiometricDeferredQueue"

    const-string v2, "Unable to acquire GateKeeperService"

    .line 298
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1b

    const/4 v1, 0x0

    .line 299
    monitor-exit v0

    return-object v1

    .line 301
    :cond_15
    :try_start_15
    invoke-static {v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic lambda$addPendingLockoutResetForUser$1(I[B)V
    .registers 6

    .line 162
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string v1, "BiometricDeferredQueue"

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face addPendingLockoutResetForUser: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2a
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_52

    .line 168
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint addPendingLockoutResetForUser: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    return-void
.end method

.method private synthetic lambda$processPendingLockoutResets$2()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "BiometricDeferredQueue"

    if-nez v0, :cond_1e

    const-string v0, "Processing pending resetLockout for face"

    .line 179
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutsForFace(Ljava/util/List;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    :cond_1e
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "Processing pending resetLockout for fingerprint"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutsForFingerprint(Ljava/util/List;)V

    .line 188
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_3a
    return-void
.end method

.method public static requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B
    .registers 10

    .line 276
    invoke-static {}, Lcom/android/server/locksettings/BiometricDeferredQueue;->getGatekeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->gatekeeperPassword:[B

    iget v5, p1, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    move-object v0, p0

    move-wide v3, p2

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "BiometricDeferredQueue"

    if-nez p0, :cond_19

    const-string p0, "VerifyChallenge failed, null response"

    .line 279
    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 282
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p3

    if-eqz p3, :cond_38

    .line 283
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyChallenge failed, response: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-static {p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 287
    :cond_38
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p1

    if-nez p1, :cond_43

    const-string p1, "Null HAT received from spManager"

    .line 288
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_43
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPendingLockoutResetForUser(I[B)V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processPendingLockoutResets()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final processPendingLockoutsForFace(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;",
            ">;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_101

    .line 223
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    const-string v1, "BiometricDeferredQueue"

    if-eqz v0, :cond_10

    const-string/jumbo v0, "mFaceGenerateChallengeCallback not null, previous operation may be stuck"

    .line 225
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 229
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 230
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 232
    iget v3, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 235
    :cond_35
    new-instance v8, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    iget-object v3, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceFinishCallback:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask$FinishCallback;

    iget-object v4, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v5, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-object v2, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask$FinishCallback;Landroid/hardware/face/FaceManager;Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/util/Set;Ljava/util/List;)V

    iput-object v8, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 238
    iget-boolean v3, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    const-string v4, "Resetting face lockout for sensor: "

    const-string v5, ", user: "

    if-eqz v3, :cond_ca

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 240
    iget-boolean v7, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    if-eqz v7, :cond_9a

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generating challenge for sensor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v8, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget v6, v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    iget-object v9, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceResetLockoutTask:Lcom/android/server/locksettings/BiometricDeferredQueue$FaceResetLockoutTask;

    invoke-virtual {v7, v8, v6, v9}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_60

    .line 246
    :cond_9a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-wide/16 v8, 0x0

    invoke-static {v7, v6, v8, v9}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    move-result-object v7

    if-eqz v7, :cond_60

    .line 251
    iget-object v8, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v9, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget v6, v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    invoke-virtual {v8, v9, v6, v7}, Landroid/hardware/face/FaceManager;->resetLockout(II[B)V

    goto :goto_60

    .line 259
    :cond_ca
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ce
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v7, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v8, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget v6, v6, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/hardware/face/FaceManager;->resetLockout(II[B)V

    goto :goto_ce

    :cond_101
    return-void
.end method

.method public final processPendingLockoutsForFingerprint(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_99

    .line 196
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 198
    iget-boolean v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    if-nez v2, :cond_37

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 200
    iget-object v4, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v3, v3, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/hardware/fingerprint/FingerprintManager;->resetLockout(II[B)V

    goto :goto_20

    .line 203
    :cond_37
    iget-boolean v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    const-string v3, "BiometricDeferredQueue"

    if-nez v2, :cond_81

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting fingerprint lockout for sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v5, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-wide/16 v6, 0x0

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/locksettings/BiometricDeferredQueue;->requestHatFromGatekeeperPassword(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;J)[B

    move-result-object v5

    if-eqz v5, :cond_41

    .line 210
    iget-object v6, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v4, v4, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    invoke-virtual {v6, v7, v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->resetLockout(II[B)V

    goto :goto_41

    .line 214
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No fingerprint HAL interface requires HAT with challenge, sensorId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_99
    return-void
.end method

.method public systemReady(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method
