.class Lcom/samsung/android/server/wifi/SemConnectivityLogger$1;
.super Landroid/os/Handler;
.source "SemConnectivityLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemConnectivityLogger;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemConnectivityLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;Landroid/os/Looper;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$1;->this$0:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x24069

    if-ne v0, v1, :cond_16

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$1;->this$0:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemConnectivityLogger;Ljava/lang/String;)V

    :cond_16
    return-void
.end method
