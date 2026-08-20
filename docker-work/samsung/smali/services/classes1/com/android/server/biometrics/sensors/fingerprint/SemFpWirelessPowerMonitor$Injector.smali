.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$Injector;
.super Ljava/lang/Object;
.source "SemFpWirelessPowerMonitor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showWirelessChargerErrorToastMessage(Landroid/content/Context;)V
    .registers 3

    const p0, 0x1040cef

    const/4 v0, 0x0

    .line 50
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
