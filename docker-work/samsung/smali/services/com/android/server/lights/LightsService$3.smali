.class public Lcom/android/server/lights/LightsService$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
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

    .line 988
    iput-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    .line 991
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmCoverType(Lcom/android/server/lights/LightsService;I)V

    .line 992
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    const-string v0, "LightsService"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_32

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverType(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object p0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0, v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmCoverOpened(Lcom/android/server/lights/LightsService;Z)V

    goto :goto_9c

    .line 996
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverType(Lcom/android/server/lights/LightsService;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmCoverOpened(Lcom/android/server/lights/LightsService;Z)V

    .line 998
    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverType(Lcom/android/server/lights/LightsService;)I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_9c

    .line 999
    const-class p1, Lcom/android/server/lights/LightsManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    if-eqz p1, :cond_9c

    .line 1001
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmCoverBatteryLight(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fputmCoverNotiLight(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)V

    .line 1003
    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverBatteryLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverBatteryLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 1004
    :cond_8b
    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverNotiLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    if-eqz p1, :cond_9c

    iget-object p0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmCoverNotiLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    :cond_9c
    :goto_9c
    return-void
.end method
