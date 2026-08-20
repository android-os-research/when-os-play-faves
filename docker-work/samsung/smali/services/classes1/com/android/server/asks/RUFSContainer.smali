.class public Lcom/android/server/asks/RUFSContainer;
.super Ljava/lang/Object;
.source "RUFSContainer.java"


# instance fields
.field public mADPCarriers:Ljava/lang/String;

.field public mADPModels:Ljava/lang/String;

.field public mASKSRNEWCarriers:Ljava/lang/String;

.field public mASKSRNEWModels:Ljava/lang/String;

.field public mDigestInToken:Ljava/lang/String;

.field public mHasRUFSToken:Z

.field public mRUFSpolicyPath:Ljava/lang/String;

.field public mRUFSpolicyVersion:Ljava/lang/String;

.field public mSizeofFiles:J

.field public mSizeofZip:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    .line 12
    iput-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getADPCarriers()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-object p0
.end method

.method public getADPModels()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-object p0
.end method

.method public getASKSRNEWCarriers()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-object p0
.end method

.method public getASKSRNEWModels()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-object p0
.end method

.method public getDigest()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-object p0
.end method

.method public getHasRUFSToken()Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    return p0
.end method

.method public getPolicyPath()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPolicyVersion()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSizeofFiles()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-wide v0
.end method

.method public getSizeofzip()J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-wide v0
.end method

.method public setADPCarriers(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    return-void
.end method

.method public setADPModels(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    return-void
.end method

.method public setASKSRNEWCarriers(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    return-void
.end method

.method public setASKSRNEWModels(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    return-void
.end method

.method public setHasRUFSToken(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    return-void
.end method

.method public setPolicyPath(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    return-void
.end method

.method public setPolicyVersion(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    return-void
.end method

.method public setSizeofFiles(J)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J

    return-void
.end method

.method public setSizeofZip(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    return-void
.end method
