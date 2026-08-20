.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;
.super Landroid/hardware/fingerprint/FingerprintServiceReceiver;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleActionUserRemoved(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintServiceReceiver;-><init>()V

    return-void
.end method
