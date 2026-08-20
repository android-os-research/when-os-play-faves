.class public final synthetic Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/HwParcel;

    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->$r8$lambda$IraeIDJnBGHGV8EM6Y6Pjovchj8(Landroid/os/HwParcel;)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method
