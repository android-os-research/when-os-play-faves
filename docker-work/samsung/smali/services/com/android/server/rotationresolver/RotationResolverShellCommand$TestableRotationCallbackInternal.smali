.class public Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;
.super Ljava/lang/Object;
.source "RotationResolverShellCommand.java"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rotationresolver/RotationResolverShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestableRotationCallbackInternal"
.end annotation


# instance fields
.field public mLastCallbackResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return-void
.end method


# virtual methods
.method public getLastCallbackCode()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return p0
.end method

.method public onFailure(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return-void
.end method

.method public onSuccess(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return-void
.end method
