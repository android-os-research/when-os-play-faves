.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$2:I

    iput p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$3:I

    iput p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$2:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$3:I

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;->f$4:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->$r8$lambda$45guoO6-AFhuEqCEs9U9Y5haeQw(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIII)V

    return-void
.end method
