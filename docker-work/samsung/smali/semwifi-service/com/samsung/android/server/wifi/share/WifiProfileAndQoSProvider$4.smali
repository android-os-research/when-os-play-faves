.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;
.super Landroid/database/ContentObserver;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->checkAndStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Handler;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 240
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misEnabledNearByScanningSettings(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result p1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(II)V

    if-nez p1, :cond_17

    .line 244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$4;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->asyncUnregisterPasswordCallback()V

    :cond_17
    return-void
.end method
