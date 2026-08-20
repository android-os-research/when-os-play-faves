.class public Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;
.super Ljava/lang/Thread;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FakeDisableProgressThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V
    .registers 2

    .line 1429
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1432
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1433
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->-$$Nest$fgetmDisablePackageNamesList(Lcom/android/server/om/OverlayManagerServiceImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FakeDisableProgressThread] packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OverlayManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$FakeDisableProgressThread;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/om/OverlayManagerServiceImpl;->mReapplyCallback:Landroid/content/om/ISamsungOverlayCallback;

    if-eqz v2, :cond_39

    const/4 v3, 0x0

    .line 1439
    invoke-interface {v2, v1, v3}, Landroid/content/om/ISamsungOverlayCallback;->overlayStateChanged(Ljava/lang/String;Z)V

    :cond_39
    const-wide/16 v1, 0x32

    .line 1441
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_d

    :catch_3f
    move-exception v1

    .line 1443
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_44
    return-void
.end method
