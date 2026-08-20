.class public Lcom/android/server/sepunion/cover/ResolutionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ResolutionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/ResolutionMonitor;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/ResolutionMonitor;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 42
    iget-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-static {p2}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->-$$Nest$fgetmConfiguration(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p2

    .line 44
    invoke-static {}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x20001000

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_52

    .line 47
    iget-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-static {p2}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->-$$Nest$fgetmCallbackRunnable(Lcom/android/server/sepunion/cover/ResolutionMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_52
    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {p0, p2}, Lcom/android/server/sepunion/cover/ResolutionMonitor;->-$$Nest$fputmConfiguration(Lcom/android/server/sepunion/cover/ResolutionMonitor;Landroid/content/res/Configuration;)V

    :cond_5c
    return-void
.end method
