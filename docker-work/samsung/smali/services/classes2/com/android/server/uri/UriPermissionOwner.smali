.class public Lcom/android/server/uri/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field public externalToken:Landroid/os/Binder;

.field public final mOwner:Ljava/lang/Object;

.field public mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 52
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    return-void
.end method

.method public static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;
    .registers 2

    .line 63
    instance-of v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_b

    .line 64
    check-cast p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-virtual {p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 128
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 130
    :cond_a
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWritePermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 135
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 137
    :cond_a
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_12

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 158
    :cond_12
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_24

    .line 159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "writeUriPermissions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 164
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 165
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_39

    .line 167
    monitor-enter v0

    .line 168
    :try_start_17
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 169
    iget-object v2, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1d

    .line 171
    :cond_34
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_17 .. :try_end_38} :catchall_36

    throw p0

    .line 173
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_60

    .line 174
    monitor-enter v0

    .line 175
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 176
    iget-object v1, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_44

    .line 178
    :cond_5b
    monitor-exit v0

    goto :goto_60

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_5d

    throw p0

    .line 180
    :cond_60
    :goto_60
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getExternalToken()Landroid/os/Binder;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 59
    :cond_b
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object p0
.end method

.method public removeReadPermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    :cond_10
    return-void
.end method

.method public removeUriPermission(Lcom/android/server/uri/GrantUri;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 78
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V

    return-void
.end method

.method public removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V
    .registers 10

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 82
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_4d

    .line 83
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_25

    .line 86
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v4}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_e

    :cond_25
    if-eqz p3, :cond_30

    .line 89
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_e

    :cond_30
    if-eq p4, v1, :cond_37

    .line 92
    iget v4, v3, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-eq p4, v4, :cond_37

    goto :goto_e

    .line 95
    :cond_37
    invoke-virtual {v3, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 96
    iget-object v4, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v4, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 99
    :cond_43
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 100
    iput-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    :cond_4d
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_98

    .line 103
    iget-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz p2, :cond_98

    .line 104
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 105
    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 106
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_70

    .line 107
    iget-object v3, v0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v3}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto :goto_59

    :cond_70
    if-eqz p3, :cond_7b

    .line 110
    iget-object v3, v0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto :goto_59

    :cond_7b
    if-eq p4, v1, :cond_82

    .line 113
    iget v3, v0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-eq p4, v3, :cond_82

    goto :goto_59

    .line 116
    :cond_82
    invoke-virtual {v0, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 117
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 118
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_59

    .line 120
    :cond_8e
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 121
    iput-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    :cond_98
    return-void
.end method

.method public removeUriPermissions()V
    .registers 2

    const/4 v0, 0x3

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    return-void
.end method

.method public removeUriPermissions(I)V
    .registers 3

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public removeWritePermission(Lcom/android/server/uri/UriPermission;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
