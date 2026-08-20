.class public final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Led"
.end annotation


# instance fields
.field public final mBatteryFullARGB:I

.field public final mBatteryLedOff:I

.field public final mBatteryLedOn:I

.field public final mBatteryLight:Lcom/android/server/lights/LogicalLight;

.field public final mBatteryLowARGB:I

.field public final mBatteryMediumARGB:I

.field public mLedStatus:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 4

    .line 4069
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4067
    iput p1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/4 p1, 0x3

    .line 4070
    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    .line 4072
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00ef

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 4074
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00f0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 4076
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00ec

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 4078
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00ee

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 4080
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .registers 6

    .line 4088
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_122

    .line 4092
    :cond_e
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 4093
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 4120
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v3, v1, :cond_64

    const/4 v3, 0x3

    if-eq v3, v2, :cond_37

    const/4 v3, 0x6

    if-eq v3, v2, :cond_37

    const/4 v3, 0x7

    if-eq v3, v2, :cond_37

    const/16 v3, 0x8

    if-ne v3, v2, :cond_64

    .line 4121
    :cond_37
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 4127
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v1, 0xb

    if-eq v1, v0, :cond_58

    .line 4128
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 4129
    iput v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 4130
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "turn on LED for not charging"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 4132
    :cond_58
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stay LED for not charging"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    :cond_64
    const/4 v2, 0x2

    if-ne v2, v1, :cond_9c

    .line 4134
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmScreenOn(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 4136
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v1, 0xa

    if-eq v1, v0, :cond_90

    .line 4137
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 4138
    iput v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 4139
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "turn on LED for charging"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 4141
    :cond_90
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stay LED for charging"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    :cond_9c
    const/4 v2, 0x5

    if-ne v2, v1, :cond_d2

    .line 4143
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmScreenOn(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 4145
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v1, 0xe

    if-eq v1, v0, :cond_c7

    .line 4146
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 4147
    iput v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 4148
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "turn on LED for fully charged"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 4150
    :cond_c7
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stay LED for fully charged"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 4152
    :cond_d2
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I

    move-result v1

    if-gt v0, v1, :cond_10d

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmScreenOn(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_10d

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 4154
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v1, 0xd

    if-eq v1, v0, :cond_102

    .line 4155
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 4156
    iput v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 4157
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "turn on LED for low battery"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 4159
    :cond_102
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stay LED for low battery"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 4161
    :cond_10d
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v0, :cond_122

    .line 4162
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 4163
    iput v4, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    .line 4164
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "turn off LED"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_122
    :goto_122
    return-void
.end method
