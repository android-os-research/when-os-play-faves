.class public final Lcom/android/server/asks/ASKSManagerService$ASKSSession;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ASKSSession"
.end annotation


# instance fields
.field public emMode:I

.field public isASKSTarget:Z

.field public mCAKeyIndex:Ljava/lang/String;

.field public mCertName:Ljava/lang/String;

.field public mCodePath:Ljava/lang/String;

.field public mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field public mPackageDigest:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPackageNameHash:Ljava/lang/String;

.field public mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field public mRufsContainer:Lcom/android/server/asks/RUFSContainer;

.field public mSignature:[Landroid/content/pm/Signature;

.field public mTokenName:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6453
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 6454
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    const-string v1, ""

    .line 6455
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 6456
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 6458
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 6459
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 6460
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    .line 6461
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 6463
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 6465
    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    .line 6467
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, -0x1

    .line 6468
    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 6469
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 6470
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 6505
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 6506
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    const-string v1, ""

    .line 6507
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 6508
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 6509
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 6510
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 6511
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    .line 6512
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 6513
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 6514
    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    .line 6515
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, -0x1

    .line 6516
    iput v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 6517
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 6518
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public getCAKeyIndex()Ljava/lang/String;
    .registers 1

    .line 6496
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    return-object p0
.end method

.method public getCertName()Ljava/lang/String;
    .registers 1

    .line 6495
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 1

    .line 6493
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    return-object p0
.end method

.method public getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;
    .registers 1

    .line 6501
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-object p0
.end method

.method public getEMMode()I
    .registers 1

    .line 6500
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 6489
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgDigest()Ljava/lang/String;
    .registers 1

    .line 6492
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgNameHash()Ljava/lang/String;
    .registers 1

    .line 6491
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    return-object p0
.end method

.method public getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;
    .registers 1

    .line 6499
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-object p0
.end method

.method public getRufsContainer()Lcom/android/server/asks/RUFSContainer;
    .registers 1

    .line 6502
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-object p0
.end method

.method public getSignature()[Landroid/content/pm/Signature;
    .registers 1

    .line 6497
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    return-object p0
.end method

.method public getTokenName()Ljava/lang/String;
    .registers 1

    .line 6494
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 6490
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public hasValue()Z
    .registers 4

    .line 6523
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 6525
    :cond_6
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    return v1

    .line 6527
    :cond_c
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isASKSTarget()Z
    .registers 1

    .line 6498
    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    return p0
.end method

.method public setASKSTarget(Z)V
    .registers 2

    .line 6483
    iput-boolean p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    return-void
.end method

.method public setCAKeyIndex(Ljava/lang/String;)V
    .registers 2

    .line 6481
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    return-void
.end method

.method public setCertName(Ljava/lang/String;)V
    .registers 2

    .line 6480
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .registers 2

    .line 6478
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    return-void
.end method

.method public setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .registers 2

    .line 6486
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public setEMMode(I)V
    .registers 2

    .line 6485
    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 6474
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPkgDigest(Ljava/lang/String;)V
    .registers 2

    .line 6477
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    return-void
.end method

.method public setPkgNameHash(Ljava/lang/String;)V
    .registers 2

    .line 6476
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    return-void
.end method

.method public setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .registers 2

    .line 6484
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-void
.end method

.method public setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V
    .registers 2

    .line 6487
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    return-void
.end method

.method public setSignature([Landroid/content/pm/Signature;)V
    .registers 2

    .line 6482
    invoke-virtual {p1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    return-void
.end method

.method public setTokenName(Ljava/lang/String;)V
    .registers 2

    .line 6479
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 6475
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version = "

    .line 6535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6536
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6538
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v1, :cond_22

    const-string v1, ", restrict = "

    .line 6539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6540
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    const-string v1, ", em mode = "

    .line 6543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6544
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6546
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v1, :cond_42

    const-string v1, ", deletable = "

    .line 6547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6548
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6550
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
