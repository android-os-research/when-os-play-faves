.class public Lcom/android/server/wm/DexRestartAppDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DexRestartAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexRestartAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexRestartAppDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexRestartAppDialog;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/wm/DexRestartAppDialog$1;->this$0:Lcom/android/server/wm/DexRestartAppDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    const-string v0, "displayId"

    .line 143
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/DexRestartAppDialog$1;->this$0:Lcom/android/server/wm/DexRestartAppDialog;

    invoke-static {v0}, Lcom/android/server/wm/DexRestartAppDialog;->-$$Nest$fgetmTargetDisplayId(Lcom/android/server/wm/DexRestartAppDialog;)I

    move-result v0

    if-ne v0, p1, :cond_3d

    const-string/jumbo p1, "reason"

    .line 145
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finish dex restart app dialog reason = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexRestartAppDialog"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/DexRestartAppDialog$1;->this$0:Lcom/android/server/wm/DexRestartAppDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_3d
    return-void
.end method
