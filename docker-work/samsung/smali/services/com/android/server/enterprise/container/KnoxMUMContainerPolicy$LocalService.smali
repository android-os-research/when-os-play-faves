.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;
.super Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .line 6030
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method public createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)V
    .registers 4

    .line 6049
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createContainerInternal."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    return-void
.end method

.method public getWorkspaceTypeList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onNewUserCreated(I)V
    .registers 2

    .line 6033
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->onNewUserCreated(I)V

    return-void
.end method

.method public setAppSeparationOwnership(Lcom/samsung/android/knox/container/ContainerCreationParams;)V
    .registers 4

    .line 6043
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAppSeparationOwnership."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    return-void
.end method
