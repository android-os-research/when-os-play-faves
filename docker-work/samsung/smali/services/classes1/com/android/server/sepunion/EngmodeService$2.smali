.class public Lcom/android/server/sepunion/EngmodeService$2;
.super Landroid/content/BroadcastReceiver;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/EngmodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_27

    :try_start_2
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "engmode_service"

    const-string p2, "BootCompleted"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 119
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    :goto_27
    return-void
.end method
