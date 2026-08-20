.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$2:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->$r8$lambda$wUjGy3i4zWb3ueRGn03AyKtR7xg(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method
