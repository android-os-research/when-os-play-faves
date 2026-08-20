.class public Lcom/android/server/ContainerServiceWrapper$1;
.super Ljava/lang/Object;
.source "ContainerServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ContainerServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 76
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p1}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$fgetTAG(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container service started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object v1, v1, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {v1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p1}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/ContainerServiceWrapper;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IContainerService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$fputmContainerService(Lcom/android/server/ContainerServiceWrapper;Lcom/samsung/android/knox/IContainerService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 84
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p1}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$fgetTAG(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container service disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object v1, v1, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {v1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p1}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$fgetmBound(Lcom/android/server/ContainerServiceWrapper;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 86
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$fputmBound(Lcom/android/server/ContainerServiceWrapper;Z)V

    .line 87
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p0}, Lcom/android/server/ContainerServiceWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/ContainerServiceWrapper;)V

    :cond_35
    return-void
.end method
