.class public Lcom/android/server/desktopmode/McfManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "McfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/McfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    return-void
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .registers 5

    .line 156
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDualModeStopLoadingScreen enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1d
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 159
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPackageStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 165
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1d
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPackageState()Ljava/util/Map;

    move-result-object p1

    const-string v0, "com.sec.android.desktopmode.uiservice"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4f

    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 169
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$2;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 171
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4f
    return-void
.end method
