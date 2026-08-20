.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;
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

    .line 252
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 255
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mgetUltraPowerSaveEnabledFromProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result p1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$msetEnableCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    .line 257
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setEnableSubscriber(Z)V

    return-void
.end method
