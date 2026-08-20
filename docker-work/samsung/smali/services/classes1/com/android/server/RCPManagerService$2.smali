.class public Lcom/android/server/RCPManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 173
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " EmergencyModeReceiver onReceive() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2d
    const-string v0, " intent is null "

    .line 173
    :goto_2f
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b1

    const-string/jumbo p1, "reason"

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_df

    .line 182
    :try_start_49
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, " EmergencyModeReceiver : calling scanAndStartBridgeProxy EMERGENCY_STATE_CHANGED reason = MODE_DISABLED "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p1, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {p1, v0}, Lcom/android/server/RCPManagerService;->-$$Nest$mscanAndStartBridgeProxy(Lcom/android/server/RCPManagerService;I)V

    .line 189
    iget-object p1, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/RCPManagerService;->-$$Nest$mgetPersonas(Lcom/android/server/RCPManagerService;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b5

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b5

    .line 191
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No of Personas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 194
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scanAndStartBridgeProxy called for PersonaId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, p2}, Lcom/android/server/RCPManagerService;->-$$Nest$mscanAndStartBridgeProxy(Lcom/android/server/RCPManagerService;I)V

    goto :goto_86

    .line 199
    :cond_b5
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaInfoList is null or empty "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_be} :catch_c0

    goto/16 :goto_1b1

    :catch_c0
    move-exception p0

    .line 202
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " BootReceiver : Exception while scanAndStartBridgeProxy() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b1

    :cond_df
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1b1

    .line 208
    :try_start_e2
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, " EmergencyModeReceiver : calling scanAndStartBridgeProxy EMERGENCY_STATE_CHANGED reason = MODE_ENABLED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "size of BridgeProxy Alive list : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->-$$Nest$fgetmBridgeProxyAliveList(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {p1}, Lcom/android/server/RCPManagerService;->-$$Nest$fgetmBridgeProxyAliveList(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11c
    if-eqz p1, :cond_174

    .line 212
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_122} :catch_198

    if-eqz p2, :cond_174

    .line 214
    :try_start_124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 216
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable rcp persona id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-enter p1
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_14d} :catch_15a

    .line 218
    :try_start_14d
    iget-object v0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v0, p2}, Lcom/android/server/RCPManagerService;->-$$Nest$munregisterBridgeProxy(Lcom/android/server/RCPManagerService;I)V

    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 220
    monitor-exit p1

    goto :goto_11c

    :catchall_157
    move-exception p2

    monitor-exit p1
    :try_end_159
    .catchall {:try_start_14d .. :try_end_159} :catchall_157

    :try_start_159
    throw p2
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15a} :catch_15a

    :catch_15a
    move-exception p2

    .line 223
    :try_start_15b
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown by unregisterBridgeProxy | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 226
    :cond_174
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "size of BridgeProxy Alive list : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/RCPManagerService$2;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {p0}, Lcom/android/server/RCPManagerService;->-$$Nest$fgetmBridgeProxyAliveList(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_197} :catch_198

    goto :goto_1b1

    :catch_198
    move-exception p0

    .line 230
    invoke-static {}, Lcom/android/server/RCPManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b1
    :goto_1b1
    return-void
.end method
