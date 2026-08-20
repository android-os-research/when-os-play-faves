.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->registerPersistentBroadcast()V
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

    .line 356
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 359
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService.Ext"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 362
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$mhandleActionUserRemoved(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Landroid/content/Intent;)V

    goto :goto_68

    :cond_29
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/Context;

    move-result-object v0

    .line 364
    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_49

    .line 365
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$mhandleActionScreenOff(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    goto :goto_68

    :cond_49
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 366
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/Context;

    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 368
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->-$$Nest$mhandleActionScreenOn(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    :cond_68
    :goto_68
    return-void
.end method
