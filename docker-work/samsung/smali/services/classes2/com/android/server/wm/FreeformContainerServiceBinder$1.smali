.class public Lcom/android/server/wm/FreeformContainerServiceBinder$1;
.super Ljava/lang/Object;
.source "FreeformContainerServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FreeformContainerServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformContainerServiceBinder;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 55
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServiceConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 59
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    iget-object v0, v0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    invoke-static {p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->-$$Nest$fgetmIsServiceRunning(Lcom/android/server/wm/FreeformContainerServiceBinder;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 62
    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    const-string/jumbo v0, "service_disconnected"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    :cond_32
    return-void
.end method
