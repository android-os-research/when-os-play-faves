.class public Lcom/android/server/notification/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    }
.end annotation


# static fields
.field public static final SHARING_FILTER:Landroid/content/IntentFilter;

.field public static final TAG:Ljava/lang/String; = "ShortcutHelper"


# instance fields
.field public mActiveShortcutBubbles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

.field public mLauncherAppsCallbackRegistered:Z

.field public mLauncherAppsService:Landroid/content/pm/LauncherApps;

.field public mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveShortcutBubbles(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLauncherAppsCallback(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLauncherAppsCallbackRegistered(Lcom/android/server/notification/ShortcutHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLauncherAppsService(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutListener(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLauncherAppsCallbackRegistered(Lcom/android/server/notification/ShortcutHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/notification/ShortcutHelper;->SHARING_FILTER:Landroid/content/IntentFilter;

    :try_start_7
    const-string v1, "*/*"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "ShortcutHelper"

    const-string v2, "Bad mime type"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V
    .registers 6

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lcom/android/server/notification/ShortcutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ShortcutHelper$1;-><init>(Lcom/android/server/notification/ShortcutHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    .line 150
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 151
    iput-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    .line 152
    iput-object p3, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 153
    iput-object p4, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z
    .registers 3

    if-eqz p0, :cond_11

    .line 177
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V
    .registers 11

    .line 224
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_29

    .line 225
    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 226
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 227
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    const/16 v7, 0x4000

    const-string v3, "android"

    .line 225
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_29
    return-void
.end method

.method public getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;
    .registers 9

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_65

    .line 197
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    if-nez p3, :cond_19

    goto :goto_62

    .line 202
    :cond_19
    :try_start_19
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 203
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, p2, v4

    .line 204
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/16 p1, 0xc11

    .line 205
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 207
    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_48

    .line 209
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    goto :goto_49

    :cond_48
    move-object p1, v1

    .line 211
    :goto_49
    iget-object p0, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/android/server/notification/ShortcutHelper;->isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z

    move-result p0
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_5d

    if-eqz p0, :cond_59

    .line 216
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_5d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    throw p0

    .line 216
    :cond_62
    :goto_62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_65
    :goto_65
    return-object v1
.end method

.method public maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V
    .registers 7

    .line 241
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 242
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez p2, :cond_6f

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6f

    .line 246
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    if-eqz p2, :cond_6f

    .line 247
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 249
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 250
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-nez p2, :cond_4b

    .line 252
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 254
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    if-nez p1, :cond_e1

    .line 257
    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    goto/16 :goto_e1

    .line 262
    :cond_6f
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 263
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 262
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_cb

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8b

    .line 266
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b8

    .line 269
    :cond_8b
    new-instance p3, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_98
    :goto_98
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 276
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    .line 280
    :cond_b8
    :goto_b8
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_cb

    .line 281
    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_cb
    iget-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 285
    iget-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iget-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    :cond_e1
    :goto_e1
    return-void
.end method

.method public setLauncherApps(Landroid/content/pm/LauncherApps;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public setShortcutServiceInternal(Landroid/content/pm/ShortcutServiceInternal;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-void
.end method

.method public setUserManager(Landroid/os/UserManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method
