.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;
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

    .line 396
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    const-string p0, "AutoWifiController"

    const-string p1, "AutoWakeupController is activated"

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
