.class public Lcom/samsung/android/mcf/continuity/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/i;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    :cond_12
    check-cast p1, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/i;->getFileSequence()I

    move-result v2

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getFileSequence()I

    move-result v3

    if-ne v2, v3, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/i;->getSrcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getSrcDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/i;->getTargetDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getTargetDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v1

    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public getFileSequence()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->c:I

    return p0
.end method

.method public getSrcDeviceId()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->a:Ljava/lang/String;

    const-string v1, "THIS_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getBtMacHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetDeviceId()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->b:Ljava/lang/String;

    const-string v1, "THIS_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getBtMacHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/i;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContinuityFileId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/i;->getSrcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/i;->getTargetDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/i;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
