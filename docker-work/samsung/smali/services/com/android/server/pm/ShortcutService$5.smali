.class public Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 3807
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 3810
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    :try_start_d
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 3814
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 3815
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->handleLocaleChanged()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p1

    .line 3818
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string p2, "Exception in mReceiver.onReceive"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-void
.end method
