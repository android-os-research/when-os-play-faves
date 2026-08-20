.class public Lcom/android/server/people/PeopleService$1;
.super Landroid/app/people/IPeopleManager$Stub;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Landroid/app/people/IPeopleManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 9

    .line 231
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 232
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getStartTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_20

    .line 236
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    return-void

    .line 234
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start time must be in the past"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 243
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 250
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 282
    iget-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "PeopleService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 283
    :cond_f
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/people/PeopleService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final enforceHasReadPeopleDataPermission()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 216
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_PEOPLE_DATA"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    return-void

    .line 218
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller doesn\'t have READ_PEOPLE_DATA permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get conversation"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .registers 7

    .line 224
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get last interaction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRecentConversations()Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get recent conversations"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->getRecentConversations(I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 258
    invoke-static {}, Lcom/android/server/people/PeopleService;->-$$Nest$smisSystemOrRoot()Z

    move-result v0

    if-nez v0, :cond_10

    .line 259
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 261
    :cond_10
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    .line 210
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService$1;->enforceHasReadPeopleDataPermission()V

    .line 211
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 212
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "register conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    new-instance v0, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0, p4}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->addConversationListener(Lcom/android/server/people/PeopleService$ListenerKey;Landroid/app/people/IConversationListener;)V

    return-void
.end method

.method public removeAllRecentConversations()V
    .registers 2

    const-string/jumbo v0, "remove all recent conversations"

    .line 203
    invoke-static {v0}, Lcom/android/server/people/PeopleService;->-$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->removeAllRecentConversations(I)V

    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "remove a recent conversation"

    .line 196
    invoke-static {v0}, Lcom/android/server/people/PeopleService;->-$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 197
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unregister conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->removeConversationListener(Landroid/app/people/IConversationListener;)V

    return-void
.end method
