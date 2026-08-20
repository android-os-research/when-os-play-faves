.class public Lcom/android/server/wm/RestartAppDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "RestartAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RestartAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RestartAppDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RestartAppDialog;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/RestartAppDialog$1;->this$0:Lcom/android/server/wm/RestartAppDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/RestartAppDialog$1;->this$0:Lcom/android/server/wm/RestartAppDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_11
    return-void
.end method
