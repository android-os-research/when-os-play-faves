.class public Lcom/att/iqi/libs/IQIServiceBroker$8$1;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/libs/IQIServiceBroker$8;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$8;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$8;)V
    .registers 2

    .line 833
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$8$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 836
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$8;

    iget-object v0, v0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter v0

    .line 837
    :try_start_5
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "binderDied"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 838
    :cond_10
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$8;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$8;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    .line 839
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method
