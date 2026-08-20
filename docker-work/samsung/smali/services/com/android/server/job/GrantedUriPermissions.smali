.class public final Lcom/android/server/job/GrantedUriPermissions;
.super Ljava/lang/Object;
.source "GrantedUriPermissions.java"


# instance fields
.field public final mGrantFlags:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mSourceUserId:I

.field public final mTag:Ljava/lang/String;

.field public final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 45
    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 46
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 47
    iput-object p3, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 48
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 49
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "job: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    return-void
.end method

.method public static checkGrantFlags(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 13

    .line 91
    invoke-static {p4}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v6, 0x0

    if-eqz p0, :cond_15

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 96
    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v6

    :cond_15
    return-object v6
.end method

.method public static createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 13

    .line 67
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 68
    invoke-static {v7}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 v6, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1d

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    .line 76
    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    move-object v6, v0

    .line 80
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2c

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    .line 82
    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v6

    :cond_2c
    return-object v6
.end method

.method public static grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 16

    .line 105
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move-object v8, p6

    :goto_6
    if-ge v1, v0, :cond_18

    .line 107
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantItem(Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return-object v8
.end method

.method public static grantItem(Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 15

    .line 135
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 136
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p6

    :cond_14
    move-object v6, p6

    .line 139
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 140
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p6

    if-eqz p6, :cond_2e

    .line 141
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v6

    :cond_2e
    return-object v6
.end method

.method public static grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .registers 16

    .line 118
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 117
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 119
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-nez p6, :cond_14

    .line 121
    new-instance v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/job/GrantedUriPermissions;-><init>(IILjava/lang/String;)V

    move-object p6, v0

    .line 123
    :cond_14
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v1

    iget-object v2, p6, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    move v3, p1

    move-object v4, p2

    move-object v5, p0

    move v6, p4

    move v8, p3

    invoke-interface/range {v1 .. v8}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 125
    iget-object p1, p6, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_2f

    :catch_28
    const-string p0, "JobScheduler"

    const-string p1, "AM dead"

    .line 127
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-object p6
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 162
    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    :goto_31
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 167
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_4f

    const-wide v2, 0x20900000005L

    .line 169
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 173
    :cond_52
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "mGrantFlags=0x"

    .line 149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSourceUserId="

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "mTag="

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mPermissionOwner="

    .line 152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 153
    :goto_30
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    const-string v1, "#"

    .line 154
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_51
    return-void
.end method

.method public revoke()V
    .registers 7

    .line 53
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_26

    .line 54
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    iget v5, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 54
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 57
    :cond_26
    iget-object p0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
