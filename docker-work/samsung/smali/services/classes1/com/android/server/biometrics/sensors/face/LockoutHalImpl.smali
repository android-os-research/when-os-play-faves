.class public Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;
.super Ljava/lang/Object;
.source "LockoutHalImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public mCurrentUserLockoutMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockoutModeForUser(I)I
    .registers 2

    .line 31
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return p0
.end method

.method public setCurrentUserLockoutMode(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return-void
.end method
