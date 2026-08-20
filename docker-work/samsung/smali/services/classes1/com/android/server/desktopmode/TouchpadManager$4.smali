.class public Lcom/android/server/desktopmode/TouchpadManager$4;
.super Landroid/content/BroadcastReceiver;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.pen.INSERT"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 96
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const-string/jumbo v0, "penInsert"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fputmIsSPenDetached(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    .line 97
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_3d

    invoke-static {}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsSPenDetached="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmIsSPenDetached(Lcom/android/server/desktopmode/TouchpadManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3d
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$4;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateSPenState(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_42
    return-void
.end method
