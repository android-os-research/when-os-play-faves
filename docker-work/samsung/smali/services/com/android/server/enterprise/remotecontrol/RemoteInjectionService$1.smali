.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;
.super Ljava/lang/Object;
.source "RemoteInjectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v0, 0x1

    .line 494
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_27

    .line 497
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 500
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    iget-object v6, v5, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 501
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v5

    xor-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 500
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_27
    return-void
.end method
