.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;
.super Ljava/lang/Object;
.source "SemWifiTrafficPoller.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputmStaPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
