.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;
.super Landroid/database/ContentObserver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V
    .registers 3

    .line 385
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 388
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 389
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misUltraPowerSaveModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    const-string v2, "emergency_mode"

    .line 388
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method
