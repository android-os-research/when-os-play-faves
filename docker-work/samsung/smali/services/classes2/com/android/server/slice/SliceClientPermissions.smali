.class public Lcom/android/server/slice/SliceClientPermissions;
.super Ljava/lang/Object;
.source "SliceClientPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    }
.end annotation


# static fields
.field public static final ATTR_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final ATTR_FULL_ACCESS:Ljava/lang/String; = "fullAccess"

.field public static final ATTR_PKG:Ljava/lang/String; = "pkg"

.field public static final NAMESPACE:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "SliceClientPermissions"

.field public static final TAG_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final TAG_CLIENT:Ljava/lang/String; = "client"

.field public static final TAG_PATH:Ljava/lang/String; = "path"


# instance fields
.field public final mAuths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            "Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation
.end field

.field public mHasFullAccess:Z

.field public final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field public final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetNAMESPACE()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 60
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 61
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    return-void
.end method

.method public static createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9b

    .line 162
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "client"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_9b

    .line 168
    :cond_16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 169
    new-instance v3, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    sget-object v4, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v5, "pkg"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v6, Lcom/android/server/slice/SliceClientPermissions;

    invoke-direct {v6, v3, p1}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    const-string p1, "fullAccess"

    .line 171
    invoke-interface {p0, v4, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_37

    const-string p1, "0"

    .line 175
    :cond_37
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3f

    move p1, v2

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    iput-boolean p1, v6, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 176
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 178
    :goto_45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    if-le p1, v0, :cond_9a

    .line 179
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    if-ne p1, v2, :cond_52

    return-object v6

    .line 182
    :cond_52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    if-ne p1, v1, :cond_96

    .line 183
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "authority"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 185
    :try_start_64
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    sget-object v4, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v7}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v7, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 187
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3, p1, v6}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 188
    invoke-virtual {v7, p0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->readFrom(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 189
    iget-object v3, v6, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v7}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getUserId()I

    move-result p1

    invoke-direct {v4, v8, p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_8d} :catch_8e

    goto :goto_96

    :catch_8e
    move-exception p1

    const-string v3, "SliceClientPermissions"

    const-string v4, "Couldn\'t read PkgUser"

    .line 192
    invoke-static {v3, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_96
    :goto_96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_45

    :cond_9a
    return-object v6

    .line 163
    :cond_9b
    :goto_9b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_a6

    .line 166
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    .line 164
    :cond_a6
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Can\'t find client tag in xml"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "client_%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 126
    invoke-virtual {p0, p0}, Lcom/android/server/slice/SliceClientPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    return-void
.end method

.method public declared-synchronized getAuthorities()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .registers 3

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {p0}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    .registers 5

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    if-nez v0, :cond_1c

    .line 75
    new-instance v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 76
    iget-object p2, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceClientPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 79
    :cond_1c
    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object p0
.end method

.method public grantUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 6

    .line 109
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 110
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p0, v0, p2}, Lcom/android/server/slice/SliceClientPermissions;->getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    move-result-object p0

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->addPath(Ljava/util/List;)V

    return-void
.end method

.method public hasFullAccess()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    return p0
.end method

.method public declared-synchronized hasPermission(Landroid/net/Uri;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "content"

    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2c

    const/4 v1, 0x0

    if-nez v0, :cond_10

    monitor-exit p0

    return v1

    .line 104
    :cond_10
    :try_start_10
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceClientPermissions;->getAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    move-result-object p2

    if-eqz p2, :cond_2a

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->hasPermission(Ljava/util/List;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    monitor-exit p0

    return v1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 2

    .line 131
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    return-void
.end method

.method public removeAuthority(Ljava/lang/String;I)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v1, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 98
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    :cond_12
    return-void
.end method

.method public revokeUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 6

    .line 116
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->getUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {p0, v0, p2}, Lcom/android/server/slice/SliceClientPermissions;->getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    move-result-object p0

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->removePath(Ljava/util/List;)V

    return-void
.end method

.method public setHasFullAccess(Z)V
    .registers 3

    .line 91
    iget-boolean v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 93
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    return-void
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_1
    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v1, "client"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "pkg"

    .line 141
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "fullAccess"

    .line 142
    iget-boolean v2, p0, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    if-eqz v2, :cond_1d

    const-string v2, "1"

    goto :goto_1f

    :cond_1d
    const-string v2, "0"

    :goto_1f
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_6c

    .line 146
    sget-object v2, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "authority"

    .line 147
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    invoke-static {v4}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->-$$Nest$fgetmAuthority(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "pkg"

    .line 148
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    invoke-static {v4}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->-$$Nest$fgetmPkg(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    invoke-virtual {v3, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v3, "authority"

    .line 152
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 155
    :cond_6c
    sget-object v0, Lcom/android/server/slice/SliceClientPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v1, "client"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_75

    .line 156
    monitor-exit p0

    return-void

    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method
