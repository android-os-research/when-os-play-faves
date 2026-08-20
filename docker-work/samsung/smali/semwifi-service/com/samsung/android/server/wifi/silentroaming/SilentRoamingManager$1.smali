.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;
.super Ljava/lang/Object;
.source "SilentRoamingManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScanFailure()V
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    return-void
.end method

.method public onFullScanResults([Landroid/net/wifi/ScanResult;)V
    .registers 3

    .line 245
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onPartialScanFailure()V
    .registers 2

    .line 250
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    return-void
.end method

.method public onPartialScanResults([Landroid/net/wifi/ScanResult;)V
    .registers 3

    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$1;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
