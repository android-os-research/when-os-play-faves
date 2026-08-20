.class public Lcom/android/server/SEDenialService$AuditFileObserver;
.super Landroid/os/FileObserver;
.source "SEDenialService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEDenialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuditFileObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/SEDenialService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEDenialService;Ljava/lang/String;I)V
    .registers 4

    .line 61
    iput-object p1, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    .line 62
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "sys.boot_completed"

    .line 67
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SecurityLogAgent:SEDenialService"

    if-nez v0, :cond_17

    const-string p0, "Not Boot completed . No intent for this"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v0, 0x2

    if-ne p1, v0, :cond_71

    if-eqz p2, :cond_71

    const-string p1, "audit.log"

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "audit.ondenial"

    .line 72
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Modify Event and sending Denial Intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v3, "samsung.intent.action.knox.DENIAL_NOTIFICATION"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.securitylogagent"

    .line 76
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "PROC_INFO"

    .line 77
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object p0, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    invoke-static {p0}, Lcom/android/server/SEDenialService;->-$$Nest$fgetmContext(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "audit.ondenial set to 0 after sending samsung.intent.action.knox.DENIAL_NOTIFICATION intent"

    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-void
.end method
