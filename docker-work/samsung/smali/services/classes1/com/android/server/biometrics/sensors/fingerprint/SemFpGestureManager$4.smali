.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SemFpGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 418
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2b

    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 419
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_2b

    :cond_15
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 421
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 422
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 423
    :cond_25
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mhandleScreenOnBroadcast(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    goto :goto_30

    .line 420
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mhandleScreenOffBroadcast(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    :cond_30
    :goto_30
    return-void
.end method
