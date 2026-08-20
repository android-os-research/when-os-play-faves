.class La/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/c;


# direct methods
.method constructor <init>(La/c;)V
    .registers 2

    iput-object p1, p0, La/a;->a:La/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.FACTORY_RESET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {}, La/c;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent recieve ACTION_MASTER_CLEAR"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.intent.extra.REASON"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MasterClearConfirm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, La/a;->a:La/c;

    invoke-static {p0}, La/c;->b(La/c;)Z

    :cond_2e
    return-void
.end method
