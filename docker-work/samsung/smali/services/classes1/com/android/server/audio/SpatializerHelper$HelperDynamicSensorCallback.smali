.class public final Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
.super Landroid/hardware/SensorManager$DynamicSensorCallback;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HelperDynamicSensorCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/hardware/SensorManager$DynamicSensorCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .registers 2

    .line 500
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method

.method public onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .registers 2

    .line 505
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p0}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$mpostInitSensors(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method
