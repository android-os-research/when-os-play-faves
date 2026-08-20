.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;
.super Landroid/database/ContentObserver;
.source "SemFpOneHandModeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->-$$Nest$mhandleContentChanged(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;)V

    return-void
.end method
