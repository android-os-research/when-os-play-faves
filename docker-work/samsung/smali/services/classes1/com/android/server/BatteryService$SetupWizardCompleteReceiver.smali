.class public final Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SetupWizardCompleteReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1510
    iput-object p1, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SetupWizardCompleteReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1513
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "!@[B_DATE] SetupWizard is completed !!"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object p0, p0, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$mupdateBatteryDate(Lcom/android/server/BatteryService;)V

    return-void
.end method
