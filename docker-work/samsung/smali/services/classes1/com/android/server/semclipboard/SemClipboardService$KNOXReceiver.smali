.class public Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KNOXReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "SemClipboardService"

    const-string p2, "ACTION_BOOT_COMPLETED. Check and Start to migrate semclipboard to keyboard."

    .line 139
    invoke-static {p1, p2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-static {p0}, Lcom/android/server/semclipboard/SemClipboardService;->-$$Nest$mmigrationClipboardToKeyboard(Lcom/android/server/semclipboard/SemClipboardService;)V

    :cond_18
    return-void
.end method
