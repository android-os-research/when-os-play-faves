.class public final synthetic Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-static {p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->$r8$lambda$cXj0pu6JMLf1t__LEg1amvQOc0g(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void
.end method
