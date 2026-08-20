.class public Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;
.super Landroid/os/Handler;
.source "SemFaceServiceExImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/Looper;)V
    .registers 3

    .line 272
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "SemFace"

    if-eq v0, v1, :cond_31

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_21
    const-string/jumbo p1, "handleMessage: MSG_PROXIMITY_SENSOR_ERROR"

    .line 283
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    const/16 p1, 0x16

    const/16 v0, 0x3e9

    invoke-static {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$msendAcquired(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;II)V

    goto :goto_41

    :cond_31
    const-string/jumbo p1, "handleMessage : MSG_INACTIVITY_TIMER_EXPIRED(TIMEOUT)"

    .line 277
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$fputmIsTimeout(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Z)V

    .line 279
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->-$$Nest$monTimeout(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    :goto_41
    return-void
.end method
