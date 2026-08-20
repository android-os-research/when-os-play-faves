.class public Lcom/android/server/uri/NeededUriGrants;
.super Ljava/lang/Object;
.source "NeededUriGrants.java"


# instance fields
.field public final flags:I

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final uris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/GrantUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 34
    iput p3, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 35
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 40
    iget-object v0, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    iget v0, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    iget-object v0, p0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_3e

    .line 46
    iget-object v2, p0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 48
    :cond_3e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
