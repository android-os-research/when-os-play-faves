.class public Lcom/android/server/enterprise/lso/LSOService$1;
.super Landroid/content/BroadcastReceiver;
.source "LSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/lso/LSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/lso/LSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/lso/LSOService;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService$1;->this$0:Lcom/android/server/enterprise/lso/LSOService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 112
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 113
    iget-object p0, p0, Lcom/android/server/enterprise/lso/LSOService$1;->this$0:Lcom/android/server/enterprise/lso/LSOService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/lso/LSOService;I)V

    :cond_18
    return-void
.end method
