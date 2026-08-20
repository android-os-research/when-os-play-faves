.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$4:Z

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    iget v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$1:I

    iget v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$2:I

    iget v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$3:I

    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;->f$4:Z

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->$r8$lambda$xC3aayHjz8VAzpJ1mLtVUPQv-ZU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZLjava/lang/Integer;)V

    return-void
.end method
