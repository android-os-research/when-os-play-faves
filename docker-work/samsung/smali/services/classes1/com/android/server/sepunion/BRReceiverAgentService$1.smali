.class public Lcom/android/server/sepunion/BRReceiverAgentService$1;
.super Landroid/content/BroadcastReceiver;
.source "BRReceiverAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/BRReceiverAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/BRReceiverAgentService;


# direct methods
.method public static synthetic $r8$lambda$K30RzbnxEncYEsS8CWHvTGIGhe0(Lcom/android/server/sepunion/BRReceiverAgentService$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    invoke-static {p0}, Lcom/android/server/sepunion/BRReceiverAgentService;->-$$Nest$mcheckIsPossibleToSendIntent(Lcom/android/server/sepunion/BRReceiverAgentService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 72
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_19
    return-void
.end method
