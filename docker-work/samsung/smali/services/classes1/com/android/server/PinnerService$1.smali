.class public Lcom/android/server/PinnerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/android/server/PinnerService$1;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 169
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p0, p0, Lcom/android/server/PinnerService$1;->this$0:Lcom/android/server/PinnerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_22
    return-void
.end method
