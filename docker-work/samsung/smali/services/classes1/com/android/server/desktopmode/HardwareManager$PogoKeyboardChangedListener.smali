.class public Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PogoKeyboardChangedListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->register()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    .line 734
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 752
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v0, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 753
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 754
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 p1, 0x0

    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdatePogoKeyboardStatus(Lcom/android/server/desktopmode/HardwareManager;Z)V

    :cond_36
    return-void
.end method

.method public final register()V
    .registers 8

    .line 736
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 737
    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 741
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 742
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sticky intent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_3c
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 744
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$PogoKeyboardChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v1, 0x0

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdatePogoKeyboardStatus(Lcom/android/server/desktopmode/HardwareManager;Z)V

    :cond_4f
    return-void
.end method
