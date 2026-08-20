.class public Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/PerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public mAccept:I

.field public mAcceptCrypto:I

.field public mAcquire:I

.field public mAcquireCrypto:I

.field public mNoMatchReason:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPermanentLockout:I

.field public mQuality:I

.field public mQualityCrypto:I

.field public mReject:I

.field public mRejectCrypto:I

.field public mTimedLockout:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/PerformanceTracker$Info-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;-><init>()V

    return-void
.end method
