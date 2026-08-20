.class public final Lcom/android/server/uri/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriPermission$Snapshot;,
        Lcom/android/server/uri/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field public static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field public globalModeFlags:I

.field public mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field public mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field public modeFlags:I

.field public ownedModeFlags:I

.field public persistableModeFlags:I

.field public persistedCreateTime:J

.field public persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public stringName:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 68
    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 70
    iput v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 72
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 75
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 81
    iput-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 91
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 92
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 94
    iput p3, p0, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 95
    iput-object p4, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    return-void
.end method


# virtual methods
.method public final addReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 257
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 258
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 259
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 261
    :cond_13
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 262
    invoke-virtual {p1, p0}, Lcom/android/server/uri/UriPermissionOwner;->addReadPermission(Lcom/android/server/uri/UriPermission;)V

    :cond_1e
    return-void
.end method

.method public final addWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 282
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 283
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 284
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 286
    :cond_13
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 287
    invoke-virtual {p1, p0}, Lcom/android/server/uri/UriPermissionOwner;->addWritePermission(Lcom/android/server/uri/UriPermission;)V

    :cond_1e
    return-void
.end method

.method public buildGrantedUriPermission()Landroid/app/GrantedUriPermission;
    .registers 3

    .line 392
    new-instance v0, Landroid/app/GrantedUriPermission;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .registers 6

    .line 388
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v3, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sourcePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " targetPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " owned=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " global=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistable=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persisted=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e9

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistedCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    :cond_e9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 336
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    const-string v1, "  * "

    if-eqz v0, :cond_123

    .line 337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "readOwners:"

    .line 338
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermissionOwner;

    .line 340
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_101

    .line 344
    :cond_123
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_158

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "writeOwners:"

    .line 346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_136
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_158

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriPermissionOwner;

    .line 348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_136

    :cond_158
    return-void
.end method

.method public getStrength(I)I
    .registers 4

    const/4 v0, 0x3

    and-int/2addr p1, v0

    .line 244
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_8

    return v0

    .line 246
    :cond_8
    iget v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_f

    const/4 p0, 0x2

    return p0

    .line 248
    :cond_f
    iget p0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z
    .registers 5

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    and-int/lit8 p1, p1, 0x3

    if-eqz v0, :cond_11

    .line 133
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    :cond_11
    if-nez p2, :cond_19

    .line 137
    iget p2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    goto :goto_27

    :cond_19
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_20

    .line 140
    invoke-virtual {p0, p2}, Lcom/android/server/uri/UriPermission;->addReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    :cond_20
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_27

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/server/uri/UriPermission;->addWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 147
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    return v1
.end method

.method public initPersistedModes(IJ)V
    .registers 4

    and-int/lit8 p1, p1, 0x3

    .line 120
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 121
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 122
    iput-wide p2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 124
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    return-void
.end method

.method public releasePersistableModes(I)Z
    .registers 5

    and-int/lit8 p1, p1, 0x3

    .line 180
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    .line 181
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_e

    const-wide/high16 v1, -0x8000000000000000L

    .line 184
    iput-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 187
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 188
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown read owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UriPermission"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_26
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3a

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 275
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    :cond_3a
    return-void
.end method

.method public removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown write owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UriPermission"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_26
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3a

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 300
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 301
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    :cond_3a
    return-void
.end method

.method public revokeModes(IZ)Z
    .registers 10

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    and-int/lit8 p1, p1, 0x3

    .line 199
    iget v3, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_46

    if-eqz v0, :cond_1e

    .line 203
    iget v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v3, -0x2

    .line 204
    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 206
    :cond_1e
    iget v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 207
    iget-object v4, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v4, :cond_46

    if-eqz p2, :cond_46

    .line 208
    iget v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 209
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermissionOwner;

    .line 210
    invoke-virtual {v6, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeReadPermission(Lcom/android/server/uri/UriPermission;)V

    goto :goto_34

    .line 212
    :cond_44
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    :cond_46
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_80

    if-eqz v0, :cond_58

    .line 217
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 218
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 220
    :cond_58
    iget p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 221
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz p1, :cond_80

    if-eqz p2, :cond_80

    .line 222
    iget p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 223
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermissionOwner;

    .line 224
    invoke-virtual {p2, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeWritePermission(Lcom/android/server/uri/UriPermission;)V

    goto :goto_6e

    .line 226
    :cond_7e
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 230
    :cond_80
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_88

    const-wide/high16 p1, -0x8000000000000000L

    .line 231
    iput-wide p1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 234
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 235
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v3, :cond_90

    move v1, v2

    :cond_90
    return v1
.end method

.method public snapshot()Lcom/android/server/uri/UriPermission$Snapshot;
    .registers 3

    .line 384
    new-instance v0, Lcom/android/server/uri/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission$Snapshot-IA;)V

    return-object v0
.end method

.method public takePersistableModes(I)Z
    .registers 7

    and-int/lit8 p1, p1, 0x3

    .line 158
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-eq v1, p1, :cond_37

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested flags 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but only 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " are allowed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UriPermission"

    .line 159
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 165
    :cond_37
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    .line 166
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz p1, :cond_45

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 172
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 173
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v1, :cond_4d

    const/4 v2, 0x1

    :cond_4d
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 310
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UriPermission{"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final updateModeFlags()V
    .registers 5

    .line 99
    iget v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 100
    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    iget v2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    const-string v1, "UriPermission"

    const/4 v2, 0x2

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_70

    iget v2, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eq v2, v0, :cond_70

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is changing from 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to 0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via calling UID "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PID "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 103
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_70
    return-void
.end method
