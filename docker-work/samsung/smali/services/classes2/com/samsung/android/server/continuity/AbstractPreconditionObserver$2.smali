.class public Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;
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

    .line 364
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final handlePackageAdded(Ljava/lang/String;Z)V
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-static {v0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Ljava/lang/String;)V

    const-string p1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz p2, :cond_15

    const-string p2, "handlePackageAdded - with EXTRA_REPLACING"

    .line 400
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Z)V

    goto :goto_20

    :cond_15
    const-string p2, "handlePackageAdded - without EXTRA_REPLACING"

    .line 403
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mnotifyChanged(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;I)V

    :goto_20
    return-void
.end method

.method public final handlePackageRemoved(Ljava/lang/String;)V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-static {v0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$munsetInstalledFlag(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mnotifyChanged(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;I)V

    return-void
.end method

.method public final handlePackageReplaced(Ljava/lang/String;)V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-static {v0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Ljava/lang/String;)V

    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Z)V

    return-void
.end method

.method public final handlePackageRestarted()V
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mnotifyRestartedPackage(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 372
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 377
    :cond_e
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_62

    goto :goto_47

    :sswitch_1c
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_47

    :cond_25
    const/4 v1, 0x3

    goto :goto_47

    :sswitch_27
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_47

    :cond_30
    const/4 v1, 0x2

    goto :goto_47

    :sswitch_32
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v1, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    move v1, v3

    :goto_47
    packed-switch v1, :pswitch_data_74

    goto :goto_60

    :pswitch_4b
    const-string p1, "android.intent.extra.REPLACING"

    .line 381
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->handlePackageAdded(Ljava/lang/String;Z)V

    goto :goto_60

    .line 387
    :pswitch_55
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->handlePackageRemoved(Ljava/lang/String;)V

    goto :goto_60

    .line 390
    :pswitch_59
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->handlePackageRestarted()V

    goto :goto_60

    .line 384
    :pswitch_5d
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->handlePackageReplaced(Ljava/lang/String;)V

    :goto_60
    return-void

    nop

    :sswitch_data_62
    .sparse-switch
        -0x304ed112 -> :sswitch_3d
        -0x2d2ad030 -> :sswitch_32
        0x1f50b9c2 -> :sswitch_27
        0x5c1076e2 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_4b
    .end packed-switch
.end method
