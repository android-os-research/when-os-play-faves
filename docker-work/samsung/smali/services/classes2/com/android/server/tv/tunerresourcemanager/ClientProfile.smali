.class public final Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_GROUP_ID:I = -0x1

.field public static final INVALID_RESOURCE_ID:I = -0x1


# instance fields
.field public mGroupId:I

.field public final mId:I

.field public mIsPriorityOverwritten:Z

.field public mNiceValue:I

.field public mPrimaryUsingFrontendHandle:I

.field public mPriority:I

.field public final mProcessId:I

.field public mShareFeClientIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTvInputSessionId:Ljava/lang/String;

.field public final mUseCase:I

.field public mUsingCasSystemId:I

.field public mUsingCiCamId:I

.field public mUsingFrontendHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUsingLnbHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    .line 70
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 90
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 95
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 112
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 113
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmTvInputSessionId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmUseCase(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    .line 115
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmProcessId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V

    return-void
.end method


# virtual methods
.method public getGroupId()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 119
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    return p0
.end method

.method public getInUseCasSystemId()I
    .registers 1

    .line 267
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return p0
.end method

.method public getInUseCiCamId()I
    .registers 1

    .line 287
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return p0
.end method

.method public getInUseFrontendHandles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    return-object p0
.end method

.method public getInUseLnbHandles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    return-object p0
.end method

.method public getPrimaryFrontend()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    return p0
.end method

.method public getPriority()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getProcessId()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    return p0
.end method

.method public getShareFeClientIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    return-object p0
.end method

.method public getTvInputSessionId()Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getUseCase()I
    .registers 1

    .line 127
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    return p0
.end method

.method public isPriorityOverwritten()Z
    .registers 1

    .line 138
    iget-boolean p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    return p0
.end method

.method public overwritePriority(I)V
    .registers 3

    if-gez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 168
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    return-void
.end method

.method public reclaimAllResources()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 303
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 304
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 305
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 306
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public releaseCas()V
    .registers 2

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return-void
.end method

.method public releaseCiCam()V
    .registers 2

    const/4 v0, -0x1

    .line 294
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public releaseFrontend()V
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 231
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, -0x1

    .line 232
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    return-void
.end method

.method public releaseLnb(I)V
    .registers 2

    .line 254
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGroupId(I)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    return-void
.end method

.method public setNiceValue(I)V
    .registers 2

    .line 172
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    return-void
.end method

.method public setPrimaryFrontend(I)V
    .registers 2

    .line 190
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    return-void
.end method

.method public setPriority(I)V
    .registers 2

    if-gez p1, :cond_3

    return-void

    .line 157
    :cond_3
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    return-void
.end method

.method public shareFrontend(I)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopSharingFrontend(I)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientProfile[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tvInputSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useCas(I)V
    .registers 2

    .line 263
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return-void
.end method

.method public useCiCam(I)V
    .registers 2

    .line 283
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public useFrontend(I)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public useLnb(I)V
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
