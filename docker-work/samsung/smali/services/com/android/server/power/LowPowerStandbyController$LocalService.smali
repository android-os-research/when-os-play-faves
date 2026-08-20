.class public final Lcom/android/server/power/LowPowerStandbyController$LocalService;
.super Lcom/android/server/power/LowPowerStandbyControllerInternal;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyControllerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    return-void
.end method


# virtual methods
.method public addToAllowlist(I)V
    .registers 2

    .line 601
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V

    return-void
.end method

.method public removeFromAllowlist(I)V
    .registers 2

    .line 606
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V

    return-void
.end method
