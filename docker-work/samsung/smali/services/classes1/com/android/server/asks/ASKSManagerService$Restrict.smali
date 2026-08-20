.class public final Lcom/android/server/asks/ASKSManagerService$Restrict;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Restrict"
.end annotation


# instance fields
.field public mDatelimit:Ljava/lang/String;

.field public mFrom:Ljava/lang/String;

.field public mPermissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mType:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6559
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6564
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    .line 6565
    iput-object p2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 6566
    iput-object p3, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 6567
    iput-object p4, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 6568
    iput-object p5, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDateLimit()Ljava/lang/String;
    .registers 1

    .line 6579
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    return-object p0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 1

    .line 6580
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6581
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 6578
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 6577
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setDateLimit(Ljava/lang/String;)V
    .registers 2

    .line 6573
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 6574
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setPermissionList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6575
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 6572
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 6571
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 6584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version = "

    .line 6585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6586
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    .line 6588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6589
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", datelimit = "

    .line 6591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6592
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from = "

    .line 6594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6595
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6597
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    const-string v2, "REVOKE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, ", pm = "

    .line 6598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 6599
    :goto_3e
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 6600
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    .line 6601
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 6604
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
