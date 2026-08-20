.class public Lcom/android/server/notification/ShortcutHelper$1;
.super Landroid/content/pm/LauncherApps$Callback;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ShortcutHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ShortcutHelper;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 10
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

    .line 105
    iget-object p3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {p3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmActiveShortcutBubbles(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_90

    .line 110
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v4, v1

    .line 116
    :goto_2e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 117
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v4, 0x1

    goto :goto_4a

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_49
    move v4, v1

    :goto_4a
    if-nez v4, :cond_21

    .line 123
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 126
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmActiveShortcutBubbles(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmLauncherAppsCallbackRegistered(Lcom/android/server/notification/ShortcutHelper;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmActiveShortcutBubbles(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 129
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v3}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmLauncherAppsService(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v4}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmLauncherAppsCallback(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps$Callback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 130
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {v3, v1}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fputmLauncherAppsCallbackRegistered(Lcom/android/server/notification/ShortcutHelper;Z)V

    goto :goto_21

    .line 138
    :cond_90
    :goto_90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_b0

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 141
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {p2}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmShortcutListener(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    move-result-object p2

    if-eqz p2, :cond_ad

    .line 142
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    invoke-static {p2}, Lcom/android/server/notification/ShortcutHelper;->-$$Nest$fgetmShortcutListener(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/server/notification/ShortcutHelper$ShortcutListener;->onShortcutRemoved(Ljava/lang/String;)V

    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_b0
    return-void
.end method
