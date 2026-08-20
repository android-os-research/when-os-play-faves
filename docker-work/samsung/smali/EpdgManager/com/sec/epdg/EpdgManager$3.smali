.class Lcom/sec/epdg/EpdgManager$3;
.super Ljava/lang/Object;
.source "EpdgManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgManager;

    .line 274
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected () ComponentName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p2, :cond_3a

    .line 300
    const-string v0, "mEpdgConnection onServiceConnected() : service is connected."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {p2}, Lcom/sec/epdg/IEpdgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fputmService(Lcom/sec/epdg/EpdgManager;Lcom/sec/epdg/IEpdgManager;)V

    .line 302
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 303
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/EpdgManager$ConnectionListener;->onConnected()V

    goto :goto_44

    .line 306
    :cond_3a
    const-string v0, "mEpdgConnection onServiceConnected() : service is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->connectService()V

    .line 309
    :cond_44
    :goto_44
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 277
    const-string v0, "EPDG_Manager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fputmService(Lcom/sec/epdg/EpdgManager;Lcom/sec/epdg/IEpdgManager;)V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v3}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v1}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 282
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v1}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v2}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v3}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v1}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b3

    .line 287
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v1}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v2}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_b3
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 292
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/EpdgManager$ConnectionListener;->onDisconnected()V

    .line 294
    :cond_c4
    return-void
.end method
