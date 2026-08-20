.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;
.super Ljava/lang/Object;
.source "SemWifiOptimizer.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_19

    :cond_12
    const-string p0, "SemWifiOptimizer"

    const-string p1, "primary ifaceName is null"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method
