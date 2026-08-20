.class public Lcom/android/server/lights/LightsService$2;
.super Lcom/android/server/lights/LightsManager;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .line 865
    iput-object p1, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LightsManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getLight(I)Lcom/android/server/lights/LogicalLight;
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsByType(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsByType(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1c

    .line 869
    iget-object p0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsByType(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method
