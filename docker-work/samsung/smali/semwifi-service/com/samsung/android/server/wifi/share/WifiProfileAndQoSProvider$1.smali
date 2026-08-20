.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$1;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "WifiProfileShare"

    const-string p2, "unlock the screen"

    .line 164
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$1;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mCasterMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$msetEnableCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    .line 166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$1;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->setEnableSubscriber(Z)V

    return-void
.end method
