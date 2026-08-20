.class public Lcom/android/server/enterprise/application/ApplicationPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V
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

    .line 7125
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "ApplicationPolicy"

    const-string v0, "User switched"

    .line 7127
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7129
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_68

    :cond_18
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.user_handle"

    .line 7133
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 7134
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7136
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7137
    invoke-static {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result v3

    .line 7138
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_2b

    .line 7148
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isPersonaEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_62

    const-string p0, "Persona no longer valid removing from cache"

    .line 7149
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7150
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7155
    :cond_62
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_2b

    :cond_68
    :goto_68
    return-void
.end method
