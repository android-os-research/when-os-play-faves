.class Lcom/samsung/android/server/wifi/SemClientModeManager$1;
.super Ljava/lang/Object;
.source "SemClientModeManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkConfiguredChanged()V
    .registers 1

    return-void
.end method

.method public onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$1;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method
