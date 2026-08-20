.class public final Lcom/android/server/BatteryService$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1497
    iput-object p1, p0, Lcom/android/server/BatteryService$TimeChangedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$TimeChangedReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$TimeChangedReceiver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1500
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_provisioned"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    .line 1502
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!@[B_DATE] TimeChangedReceiver"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object p0, p0, Lcom/android/server/BatteryService$TimeChangedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mupdateBatteryDate(Lcom/android/server/BatteryService;)V

    goto :goto_26

    .line 1505
    :cond_1d
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "!@[B_DATE] TimeChangedReceiver , no SetupWizard"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method
