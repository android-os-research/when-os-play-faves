.class public Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
.super Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;
.source "TestHal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "face.hidl.TestHal"


# instance fields
.field public mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 56
    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(J)I
    .registers 3

    const-string p0, "face.hidl.TestHal"

    const-string p1, "authenticate"

    .line 159
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public cancel()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v0, :cond_c

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 120
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string p0, "face.hidl.TestHal"

    const-string p1, "enroll"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enumerate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.hidl.TestHal"

    const-string v1, "enumerate"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    const-wide/16 v1, 0x0

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1, v2, v3, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    :cond_16
    return v0
.end method

.method public generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 4

    const-string p0, "face.hidl.TestHal"

    const-string p1, "generateChallenge"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 3

    .line 111
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
.end method

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .registers 3

    .line 103
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    return-object p0
.end method

.method public remove(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "remove"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v0, :cond_59

    const-wide/16 v1, 0x0

    if-nez p1, :cond_47

    .line 141
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 142
    invoke-virtual {p1, v0, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/Face;

    .line 145
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 147
    :cond_3f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {p1, v1, v2, v0, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    goto :goto_59

    .line 149
    :cond_47
    new-instance v3, Ljava/util/ArrayList;

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    .line 149
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    :cond_59
    :goto_59
    const/4 p0, 0x0

    return p0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    const-string p0, "face.hidl.TestHal"

    const-string/jumbo p1, "resetLockout"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public revokeChallenge()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public sehAuthenticate(JILjava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehCloseTaSession()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehConfigurePreview(ILjava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehFinishTaInstallation(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehGetEngineVersion()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sehGetFaceTagList(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 178
    invoke-interface {p1, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;->onValues(II)V

    return-void
.end method

.method public sehGetServicePid()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehGetTaInfo()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public sehInstallTaDataChunk(Landroid/os/HidlMemory;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehIsTaSessionClosed()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehOpenTaSession()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehPauseEnrollment()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehPrepareTaInstallation()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehResumeEnrollment()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 189
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 190
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 191
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object p0
.end method

.method public sehSetFaceTag(ILjava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehSetRotation(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sehSetSecurityLevel(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .registers 3

    .line 72
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 2

    .line 64
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 65
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 67
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object p0
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public userActivity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
