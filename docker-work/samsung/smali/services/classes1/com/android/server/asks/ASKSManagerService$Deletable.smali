.class public final Lcom/android/server/asks/ASKSManagerService$Deletable;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deletable"
.end annotation


# instance fields
.field public mDatelimit:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 6615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6616
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    .line 6617
    iput-object p2, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateLimit()Ljava/lang/String;
    .registers 1

    .line 6624
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 6623
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setDateLimit(Ljava/lang/String;)V
    .registers 2

    .line 6621
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 6620
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version = "

    .line 6628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6629
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", datelimit = "

    .line 6631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6632
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
