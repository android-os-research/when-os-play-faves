.class public Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutServiceCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$G15IkHYUSZ_KlResIjWZbLe2mQs(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->lambda$onShortcutsRemoved$1(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngHhCK6hjdRUKqnGFxqW2cBJpAg(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->lambda$onShortcutsAddedOrUpdated$0(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .registers 2

    .line 1104
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$ShortcutServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method

.method private synthetic lambda$onShortcutsAddedOrUpdated$0(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 8

    .line 1110
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    .line 1111
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 1112
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v1

    .line 1113
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1112
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ShortcutHelper;->isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1114
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v1

    if-eqz v1, :cond_4f

    if-eqz p1, :cond_3b

    .line 1116
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-eqz v1, :cond_44

    .line 1118
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1121
    :cond_44
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v3, 0x1d

    invoke-static {v1, v2, v3}, Lcom/android/server/people/data/DataManager;->-$$Nest$mcleanupCachedShortcuts(Lcom/android/server/people/data/DataManager;II)V

    .line 1125
    :cond_4f
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_e

    :cond_55
    return-void
.end method

.method private synthetic lambda$onShortcutsRemoved$1(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 9

    const/4 v0, -0x1

    .line 1137
    :try_start_1
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1138
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1137
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_2c

    :catch_14
    move-exception v1

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    .line 1142
    :goto_2c
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p2

    .line 1143
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1144
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    if-eqz p2, :cond_54

    .line 1147
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/server/people/data/PackageData;->deleteDataForConversation(Ljava/lang/String;)V

    .line 1149
    :cond_54
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_5c
    if-eq v1, v0, :cond_67

    .line 1152
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {p0}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmNotificationManagerInternal(Lcom/android/server/people/data/DataManager;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object p0

    invoke-interface {p0, p1, v1, v2}, Lcom/android/server/notification/NotificationManagerInternal;->onConversationRemoved(Ljava/lang/String;ILjava/util/Set;)V

    :cond_67
    return-void
.end method


# virtual methods
.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
