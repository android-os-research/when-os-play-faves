.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;
.super Landroid/database/ContentObserver;
.source "SemFpGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;Landroid/os/Handler;)V
    .registers 3

    .line 318
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mhandleOnChangeSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    return-void
.end method
