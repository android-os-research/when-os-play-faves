.class public Lcom/android/server/sepunion/OneHandService$1;
.super Landroid/content/BroadcastReceiver;
.source "OneHandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/OneHandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/OneHandService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/OneHandService;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$1;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_13

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 152
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$1;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {p0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V

    :cond_13
    return-void
.end method
