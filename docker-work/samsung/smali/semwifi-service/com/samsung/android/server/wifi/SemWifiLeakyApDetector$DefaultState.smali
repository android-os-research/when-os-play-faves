.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;
.super Lcom/android/internal/util/State;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 161
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiLeakyApDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public exit()V
    .registers 2

    .line 166
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exit"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiLeakyApDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 171
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiLeakyApDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2b
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p0, 0x1

    return p0
.end method
