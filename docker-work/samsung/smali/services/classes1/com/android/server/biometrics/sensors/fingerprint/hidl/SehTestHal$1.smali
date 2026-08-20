.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;
.super Ljava/lang/Object;
.source "SehTestHal.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;-><init>(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAcquiredEvent(II)V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverAcquiredEvent(II)V

    return-void
.end method

.method public deliverAuthenticationResult(I)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverAuthenticationResult(I)V

    return-void
.end method

.method public deliverEnrollResult(I)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverEnrollResult(I)V

    return-void
.end method

.method public deliverErrorEvent(II)V
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    return-void
.end method

.method public deliverTspEvent(I)V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverTspEvent(I)V

    return-void
.end method
