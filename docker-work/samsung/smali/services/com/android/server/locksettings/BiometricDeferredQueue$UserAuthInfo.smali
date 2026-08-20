.class public Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;
.super Ljava/lang/Object;
.source "BiometricDeferredQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/BiometricDeferredQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAuthInfo"
.end annotation


# instance fields
.field public final gatekeeperPassword:[B

.field public final userId:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 69
    iput-object p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->gatekeeperPassword:[B

    return-void
.end method
