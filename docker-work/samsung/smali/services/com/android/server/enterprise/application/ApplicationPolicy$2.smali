.class public Lcom/android/server/enterprise/application/ApplicationPolicy$2;
.super Landroid/os/ContainerStateReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .line 777
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 7

    .line 780
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 781
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 783
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 784
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result p3

    .line 785
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_1c

    .line 786
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v2, v0, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_1c

    :cond_3c
    return-void
.end method
