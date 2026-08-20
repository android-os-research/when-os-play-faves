.class public final Lcom/android/server/asks/ASKSManagerService$ASKSState;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ASKSState"
.end annotation


# instance fields
.field public deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field public emMode:I

.field public restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6386
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    const/4 v1, 0x0

    .line 6387
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 6388
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 6389
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V
    .registers 4

    .line 6393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6386
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    const/4 v1, 0x0

    .line 6387
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 6388
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 6389
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 6395
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 6396
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 6397
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, -0x1

    .line 6421
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    const/4 v1, 0x0

    .line 6422
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 6423
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 6424
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;
    .registers 1

    .line 6406
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-object p0
.end method

.method public getEMMode()I
    .registers 1

    .line 6405
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    return p0
.end method

.method public getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;
    .registers 1

    .line 6404
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-object p0
.end method

.method public hasValue()Z
    .registers 4

    .line 6410
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 6412
    :cond_6
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    return v1

    .line 6414
    :cond_c
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .registers 2

    .line 6402
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public setEMMode(I)V
    .registers 2

    .line 6401
    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    return-void
.end method

.method public setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .registers 2

    .line 6400
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 6428
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ASKSState info {"

    .line 6429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6431
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "restrict = "

    .line 6432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6433
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6436
    :cond_1d
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    const-string v1, " emmode = "

    .line 6437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6438
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6441
    :cond_30
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v1, :cond_42

    const-string v1, " deletable = "

    .line 6442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6443
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_42
    const-string/jumbo p0, "}"

    .line 6445
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6447
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
