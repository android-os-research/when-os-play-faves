.class public Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$4;
.super Landroid/content/BroadcastReceiver;
.source "AbstractPreconditionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 524
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "[MCF_DS_SYS]_PreconditionObserver"

    const-string p2, "mAccountChangeReceiver.onReceive - LOGIN_ACCOUNTS_CHANGED_ACTION"

    .line 525
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$4;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mcheckAccountUpdated(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    :cond_18
    return-void
.end method
