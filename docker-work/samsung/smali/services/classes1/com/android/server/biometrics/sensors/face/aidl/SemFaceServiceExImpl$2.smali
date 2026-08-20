.class public Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;
.super Landroid/view/OrientationEventListener;
.source "SemFaceServiceExImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public static synthetic $r8$lambda$enFe1BdTP29t8aTEp3WTN1ilgZ8(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->lambda$onOrientationChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;I)V
    .registers 4

    .line 301
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onOrientationChanged$0()V
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$mdaemonSetRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    .line 304
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 308
    :cond_9
    :try_start_9
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 309
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)I

    move-result v0

    if-eq p1, v0, :cond_55

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fputmLastRotation(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V

    .line 311
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 312
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_38
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_38} :catch_39

    goto :goto_55

    :catch_39
    move-exception p0

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onOrientationChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFace"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method
