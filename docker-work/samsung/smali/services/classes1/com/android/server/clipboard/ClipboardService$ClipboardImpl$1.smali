.class public Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 449
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {p0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmContext(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p0, 0x10402dc

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
