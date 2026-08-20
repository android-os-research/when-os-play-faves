.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFpScreenStatusNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->-$$Nest$mnotifyScreenStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V

    return-void
.end method
