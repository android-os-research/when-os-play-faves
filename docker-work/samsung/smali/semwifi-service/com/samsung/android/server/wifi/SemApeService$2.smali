.class Lcom/samsung/android/server/wifi/SemApeService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeService;)V
    .registers 2

    .line 1454
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$2;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 1457
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$2;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 1462
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$2;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessage(I)Z

    return-void
.end method
