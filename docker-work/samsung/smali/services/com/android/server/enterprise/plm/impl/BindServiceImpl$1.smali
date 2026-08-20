.class public Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;
.super Ljava/lang/Object;
.source "BindServiceImpl.java"

# interfaces
.implements Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmAliveEvent(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method

.method public onDisconnect()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {v0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;->this$0:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->-$$Nest$fgetmDeathEvent(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method
