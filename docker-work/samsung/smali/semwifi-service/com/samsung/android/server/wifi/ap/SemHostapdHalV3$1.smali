.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$1;
.super Landroid/os/Handler;
.source "SemHostapdHalV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Landroid/os/Looper;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 83
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, " check ServiceManager null or not"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    goto :goto_1c

    .line 86
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$minitialize(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z

    move-result p1

    if-nez p1, :cond_1c

    const-wide/16 v1, 0x12c

    .line 87
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    :goto_1c
    return-void
.end method
