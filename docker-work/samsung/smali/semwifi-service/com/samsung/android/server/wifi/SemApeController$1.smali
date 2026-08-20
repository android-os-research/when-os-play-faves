.class Lcom/samsung/android/server/wifi/SemApeController$1;
.super Landroid/database/ContentObserver;
.source "SemApeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemApeController;->registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeController;

.field final synthetic val$facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 4

    .line 152
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$1;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeController$1;->val$facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 155
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$1;->val$facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$1;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sem_wifi_ape_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APE in Settings is changed as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$1;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$1;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
