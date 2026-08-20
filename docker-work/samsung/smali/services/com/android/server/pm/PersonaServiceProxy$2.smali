.class public Lcom/android/server/pm/PersonaServiceProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PersonaManagerService::Proxy"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast received. Action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.USER_STARTED"

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string p1, "PersonaManagerService::Proxy"

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " started. Finding container service..."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1, v0}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    const-string p1, "PersonaManagerService::Proxy"

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking if "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is enabled COM container"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object p1

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 109
    :cond_77
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "persona"

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    goto/16 :goto_19c

    :cond_88
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_139

    const-string p1, "android.intent.extra.user_handle"

    .line 112
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "PersonaManagerService::Proxy"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed User - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmIsDoEnabled(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result p1

    if-nez p1, :cond_131

    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$misKnoxProfileExist(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result p1

    if-nez p1, :cond_131

    const-string p1, "PersonaManagerService::Proxy"

    const-string p2, "No Knox profile exist on device so stopping all Container service"

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmContainerServiceLock(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 118
    :try_start_cb
    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p2}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmContainerServices(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_12c

    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p2}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmContainerServices(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_12c

    .line 119
    iget-object p2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p2}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmContainerServices(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 120
    :goto_ed
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 121
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ContainerServiceInfo;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ContainerServiceWrapper;

    const-string v2, "PersonaManagerService::Proxy"

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping Container service - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Lcom/android/server/ContainerServiceWrapper;->disconnect()Z

    goto :goto_ed

    .line 128
    :cond_123
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$fgetmContainerServices(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 130
    :cond_12c
    monitor-exit p1

    goto :goto_19c

    :catchall_12e
    move-exception p0

    monitor-exit p1
    :try_end_130
    .catchall {:try_start_cb .. :try_end_130} :catchall_12e

    throw p0

    :cond_131
    const-string p0, "PersonaManagerService::Proxy"

    const-string p1, "Knox profile exist on device so not stopping Container service..."

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19c

    :cond_139
    const-string v0, "android.intent.action.USER_ADDED"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19c

    const-string p1, "android.intent.extra.user_handle"

    .line 136
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string p1, "PersonaManagerService::Proxy"

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added User - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 140
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    goto :goto_19c

    :cond_16a
    const-string p0, "PersonaManagerService::Proxy"

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Added User - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is a non-knox user, so disable Secure Folder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_185
    const-string/jumbo p0, "package"

    .line 144
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-string v3, "com.samsung.knox.securefolder"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 145
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_197} :catch_198

    goto :goto_19c

    :catch_198
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19c
    :goto_19c
    return-void
.end method
