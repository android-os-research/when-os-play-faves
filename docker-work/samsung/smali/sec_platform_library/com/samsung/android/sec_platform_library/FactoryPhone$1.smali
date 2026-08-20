.class Lcom/samsung/android/sec_platform_library/FactoryPhone$1;
.super Ljava/lang/Object;
.source "FactoryPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sec_platform_library/FactoryPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceConnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->registerAction()V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V

    .line 38
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceDisconnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;->this$0:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V

    .line 43
    return-void
.end method
