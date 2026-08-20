.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;
.super Ljava/lang/Object;
.source "SemFpScreenStatusNotifier.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;
    }
.end annotation


# static fields
.field public static final SCREEN_OFF:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCREEN_ON:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCREEN_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SemFpScreenStatusNotifier"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

.field public mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mScreenStatus:I

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyScreenStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->notifyScreenStatus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 49
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 58
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    return-void
.end method


# virtual methods
.method public final notifyScreenStatus()V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    .line 107
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyScreenStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemFpScreenStatusNotifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    if-ne v1, v0, :cond_33

    return-void

    .line 111
    :cond_33
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenStatus:I

    .line 112
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 1

    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->registerBroadcastReceiver()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->notifyScreenStatus()V

    return-void
.end method

.method public onAuthenticationStopped()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    return-void

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final registerBroadcastReceiver()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    return-void

    .line 91
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 102
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 100
    invoke-static {v1, p0, v0, v2, v3}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    const/16 v1, 0x25

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II[B[B)I

    move-result v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TZ BUILD TYPE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemFpScreenStatusNotifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    return-void

    .line 84
    :cond_24
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    return-void
.end method
