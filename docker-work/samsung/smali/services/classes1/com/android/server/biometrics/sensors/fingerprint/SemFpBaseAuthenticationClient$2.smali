.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;
.super Landroid/content/BroadcastReceiver;
.source "SemFpBaseAuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 423
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->-$$Nest$mhandleNotificationAction(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;Landroid/content/Intent;)V

    return-void
.end method
