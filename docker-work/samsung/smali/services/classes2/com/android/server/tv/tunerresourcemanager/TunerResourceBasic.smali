.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
    }
.end annotation


# instance fields
.field public final mHandle:I

.field public mIsInUse:Z

.field public mOwnerClientId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 44
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->-$$Nest$fgetmHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    return-void
.end method


# virtual methods
.method public getHandle()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:I

    return p0
.end method

.method public getOwnerClientId()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return p0
.end method

.method public isInUse()Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    return p0
.end method

.method public removeOwner()V
    .registers 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method

.method public setOwner(I)V
    .registers 3

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 66
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method
