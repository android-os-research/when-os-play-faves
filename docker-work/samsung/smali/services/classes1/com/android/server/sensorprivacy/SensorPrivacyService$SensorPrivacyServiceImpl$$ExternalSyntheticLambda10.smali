.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->$r8$lambda$D7ddsNtmM9WodKG8_dDU0r5FRRU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)V

    return-void
.end method
