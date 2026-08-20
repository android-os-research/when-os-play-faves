.class public Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "SemFaceServiceExImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->registerBroadcastEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public static synthetic $r8$lambda$RsK0b3kv93jYcwqadIRU4vweuuE(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 1

    .line 597
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$mdaemonCancelInternal(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 592
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 593
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBroadCastReceive : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemFace"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_33

    .line 596
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_33
    return-void
.end method
