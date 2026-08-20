.class public Lcom/android/server/am/FreecessTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessTrigger;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger$2;->this$0:Lcom/android/server/am/FreecessTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    const-string p1, "android.intent.extra.REPLACING"

    .line 144
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2f

    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    .line 148
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_2f

    .line 150
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p2

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/FreecessHandler;->sendRemovePackageMsg(Ljava/lang/String;I)V

    :cond_2f
    return-void
.end method
