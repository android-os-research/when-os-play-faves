.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
.super Ljava/lang/Object;
.source "SemFpBaseRequestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public mCommand:I

.field public final mContext:Landroid/content/Context;

.field public mInputBuffer:[B

.field public final mLazyDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public mOutputBuffer:[B

.field public mOwner:Ljava/lang/String;

.field public mParam:I

.field public final mSensorId:I

.field public mToken:Landroid/os/IBinder;

.field public mUseScheduler:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/function/Supplier<",
            "TT;>;I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 63
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 64
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mSensorId:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mUserId:I

    const-string p1, "FingerprintRequestClient"

    .line 66
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mOwner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient<",
            "TT;>;"
        }
    .end annotation

    .line 125
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mSensorId:I

    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mUserId:I

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mOwner:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mUseScheduler:Z

    iget v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mCommand:I

    iget v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mParam:I

    iget-object v12, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mInputBuffer:[B

    iget-object v13, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mOutputBuffer:[B

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    return-object v14
.end method

.method public setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 95
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mCommand:I

    return-object p0
.end method

.method public setInputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mInputBuffer:[B

    return-object p0
.end method

.method public setListener(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            ")",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    return-object p0
.end method

.method public setOutputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mOutputBuffer:[B

    return-object p0
.end method

.method public setOwner(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mOwner:Ljava/lang/String;

    return-object p0
.end method

.method public setParam(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 101
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mParam:I

    return-object p0
.end method

.method public setToken(Landroid/os/IBinder;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setUseScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mUseScheduler:Z

    return-object p0
.end method

.method public setUserId(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 77
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->mUserId:I

    return-object p0
.end method
