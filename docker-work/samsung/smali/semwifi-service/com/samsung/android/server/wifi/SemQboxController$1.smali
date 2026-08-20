.class Lcom/samsung/android/server/wifi/SemQboxController$1;
.super Landroid/content/BroadcastReceiver;
.source "SemQboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemQboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemQboxController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemQboxController;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$1;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.samsung.android.wifi.QBOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_4b

    :cond_24
    const-string p1, "enable"

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    const-string p1, "uid"

    .line 103
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3e

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$1;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->removeAll()V

    goto :goto_4b

    :cond_3e
    if-eqz v0, :cond_46

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$1;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->addUid(I)V

    goto :goto_4b

    .line 110
    :cond_46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$1;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->removeUid(I)V

    :goto_4b
    return-void
.end method
