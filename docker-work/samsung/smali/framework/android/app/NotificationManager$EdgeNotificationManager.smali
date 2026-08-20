.class Landroid/app/NotificationManager$EdgeNotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeNotificationManager"
.end annotation


# static fields
.field private static final blacklist EXTRA_SAMSUNG_NOTIFICATION_PENDINGINTENT:Ljava/lang/String; = "samsung.notification.pendingIntent"

.field private static final blacklist EXTRA_SAMSUNG_NOTIFICATION_REMOVE_ALL:Ljava/lang/String; = "samsung.notification.remove_all"

.field private static final blacklist EXTRA_SAMSUNG_NOTIFICATION_TYPE:Ljava/lang/String; = "samsung.notification.type"

.field private static final blacklist EXTRA_SAMSUNG_NOTIFICATION_WHEN:Ljava/lang/String; = "samsung.notification.when"

.field private static final blacklist EXTRA_SAMSUNG_PEOPLE_PENDINGINTENT:Ljava/lang/String; = "samsung.people.pendingIntents"

.field private static final blacklist EXTRA_SAMSUNG_PEOPLE_SUBCATEGORY:Ljava/lang/String; = "samsung.people.subcategory"

.field private static final blacklist EXTRA_SAMSUNG_PEOPLE_SUBTITLES:Ljava/lang/String; = "samsung.people.subTitles"

.field private static final blacklist EXTRA_SAMSUNG_PEOPLE_TIMESTAMPS:Ljava/lang/String; = "samsung.people.timestamps"

.field private static final blacklist EXTRA_SAMSUNG_PEOPLE_TITLES:Ljava/lang/String; = "samsung.people.titles"

.field private static final blacklist EXTRA_SAMSUNG_PEOPLE_URIS:Ljava/lang/String; = "samsung.people.uris"

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationManager.EdgeNotificationManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2939
    iput-object p1, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    .line 2940
    return-void
.end method

.method private blacklist postEdgeNotificationInternal(ILandroid/os/Bundle;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 3002
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    .line 3003
    .local v6, "service":Landroid/app/INotificationManager;
    iget-object v0, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3005
    .local v7, "pkg":Ljava/lang/String;
    :try_start_a
    iget-object v0, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v0, v6

    move-object v1, v7

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueEdgeNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 3008
    goto :goto_20

    .line 3006
    :catch_1c
    move-exception v0

    .line 3007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3009
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private blacklist removeEdgeNotificationInternal(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 3012
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3013
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/app/NotificationManager$EdgeNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3015
    .local v1, "pkg":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/app/INotificationManager;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 3018
    goto :goto_16

    .line 3016
    :catch_12
    move-exception v2

    .line 3017
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3019
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method


# virtual methods
.method public blacklist postEdgeNotification(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 2953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postEdgeNotification:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationManager.EdgeNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    if-eqz p2, :cond_28

    const-string/jumbo v0, "samsung.notification.type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2959
    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$EdgeNotificationManager;->postEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 2960
    return-void

    .line 2956
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist postEdgeNotificationByNormal(ILandroid/app/Notification;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 2963
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_67

    .line 2964
    iget-object v0, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "samsung.people.uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 2965
    const-string v0, "NotificationManager.EdgeNotificationManager"

    const-string/jumbo v2, "postEdgeNotificationByNormal"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2969
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v2, "samsung.notification.type"

    const-string/jumbo v3, "normal"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    iget-object v2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string/jumbo v3, "samsung.notification.pendingIntent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2971
    iget-wide v2, p2, Landroid/app/Notification;->when:J

    const-string/jumbo v4, "samsung.notification.when"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2974
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2975
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.titles"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2976
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.subTitles"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2977
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.pendingIntents"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2978
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.timestamps"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2979
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "samsung.people.subcategory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2981
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager$EdgeNotificationManager;->postEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 2984
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_67
    return-void
.end method

.method public blacklist removeEdgeNotification(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 2943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeEdgeNotification:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationManager.EdgeNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    if-eqz p2, :cond_2d

    const-string/jumbo v0, "samsung.notification.type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_2d

    .line 2946
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The bundle has wrong value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2949
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 2950
    return-void
.end method

.method public blacklist removeEdgeNotificationAllByNormal()V
    .registers 4

    .line 2994
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2996
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "samsung.notification.type"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    const-string/jumbo v1, "samsung.notification.remove_all"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2998
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 2999
    return-void
.end method

.method public blacklist removeEdgeNotificationByNormal(I)V
    .registers 5
    .param p1, "id"    # I

    .line 2987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2989
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "samsung.notification.type"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager$EdgeNotificationManager;->removeEdgeNotificationInternal(ILandroid/os/Bundle;)V

    .line 2991
    return-void
.end method
