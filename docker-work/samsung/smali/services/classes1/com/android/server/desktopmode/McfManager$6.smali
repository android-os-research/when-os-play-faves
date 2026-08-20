.class public Lcom/android/server/desktopmode/McfManager$6;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
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
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;Ljava/lang/String;)V
    .registers 3

    .line 234
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$6;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 5

    .line 237
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWirelessDeXBleAddressSettingChangedListener onSettingChanged value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1d
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager$6;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p2

    const/16 v0, 0x66

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager$6;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$6;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 241
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 240
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
