.class public final Lcom/android/server/devicestate/OverrideRequest;
.super Ljava/lang/Object;
.source "OverrideRequest.java"


# instance fields
.field public mCallStack:Ljava/lang/String;

.field public final mFlags:I

.field public mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mRequestedState:I

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;III)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPackageName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/server/devicestate/OverrideRequest;->mCallStack:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 42
    iput p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 43
    iput p3, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    .line 44
    iput p4, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return-void
.end method


# virtual methods
.method public getCallStack()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mCallStack:Ljava/lang/String;

    return-object p0
.end method

.method public getFlags()I
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    return p0
.end method

.method public getRequestedState()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:I

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setCallerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequest;->mPackageName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/server/devicestate/OverrideRequest;->mCallStack:Ljava/lang/String;

    return-void
.end method
