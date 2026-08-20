.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$7;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const-string p2, "com.samsung.android.tencentwifisecurity"

    .line 517
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
