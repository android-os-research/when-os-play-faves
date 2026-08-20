.class public final synthetic Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    check-cast p2, Lcom/android/server/biometrics/BiometricSensor;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->$r8$lambda$5DBri_5h7ojpzNVJ6cAQiVHfTBo(Lcom/android/server/biometrics/BiometricSensor;Lcom/android/server/biometrics/BiometricSensor;)I

    move-result p0

    return p0
.end method
