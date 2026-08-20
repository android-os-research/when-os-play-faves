.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;
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

    .line 376
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 379
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misSmartNetworkSwitchEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmIsSmartSwitchEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    return-void
.end method
