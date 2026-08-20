.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->$r8$lambda$s3rFpnyvGW5khNjGi0xRSE4m5nA(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V

    return-void
.end method
