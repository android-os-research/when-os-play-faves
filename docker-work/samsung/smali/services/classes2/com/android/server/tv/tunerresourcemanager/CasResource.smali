.class public Lcom/android/server/tv/tunerresourcemanager/CasResource;
.super Ljava/lang/Object;
.source "CasResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    }
.end annotation


# instance fields
.field public mAvailableSessionNum:I

.field public mMaxSessionNum:I

.field public mOwnerClientIdsToSessionNum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->-$$Nest$fgetmSystemId(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 43
    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 44
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    return-void
.end method


# virtual methods
.method public getMaxSessionNum()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    return p0
.end method

.method public getOwnerClientIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    return p0
.end method

.method public getUsedSessionNum()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public isFullyUsed()Z
    .registers 1

    .line 60
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public ownersMapToString()Ljava/lang/String;
    .registers 5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, " clientId="

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", owns session num="

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_42
    const-string/jumbo p0, "}"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeOwner(I)V
    .registers 5

    .line 92
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 93
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOwner(I)V
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_20

    .line 81
    :cond_f
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 82
    :goto_20
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CasResource[systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFullyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerClients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->ownersMapToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateMaxSessionNum(I)V
    .registers 4

    .line 69
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 71
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    return-void
.end method
