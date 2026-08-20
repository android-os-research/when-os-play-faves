.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoWifiStoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1005
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 1009
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    const-string p0, "AutoWifiController"

    const-string p1, "already stopped"

    .line 1011
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
