.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;
.super Ljava/lang/Object;
.source "SemWifiServiceDetector.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryInterfaceChanged(Ljava/lang/String;)V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 285
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_71

    .line 288
    :cond_34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 289
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 292
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_71
    :goto_71
    return-void
.end method
