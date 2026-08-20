.class public final Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownAppsStore"
.end annotation


# static fields
.field public static final NEED_TO_BLOCK:I = 0x2

.field public static final NEED_TO_CHECK_HASH:I = 0x1

.field public static final NEED_TO_EXCEPT:I = 0x3

.field public static final NEED_TO_WARNING:I = 0x4

.field public static final NEED_TO_WARNING_DEV:I = 0x5


# instance fields
.field public packageInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public sigHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addPkgHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 6699
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    .line 6702
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6703
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_18

    .line 6705
    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6708
    :goto_18
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6709
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;)I
    .registers 5

    .line 6717
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_52

    .line 6718
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ALL"

    if-eqz v0, :cond_2f

    .line 6720
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_52

    .line 6722
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 6723
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_2e

    .line 6724
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6725
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->retValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    return v2

    .line 6734
    :cond_2f
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 6736
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_52

    .line 6737
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 6738
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6739
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->retValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_52
    const/4 p0, 0x3

    return p0
.end method

.method public checkPolicyWithHash(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 6752
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 6754
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "ALL"

    if-eqz v0, :cond_36

    .line 6756
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_26

    .line 6758
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6759
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_37

    :cond_26
    if-eqz p1, :cond_36

    .line 6761
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 6762
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-nez v2, :cond_58

    .line 6769
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 6770
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_58

    .line 6772
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 6773
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 6779
    :cond_58
    invoke-virtual {p0, v1}, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->retValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSig()Ljava/lang/String;
    .registers 1

    .line 6694
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->sigHash:Ljava/lang/String;

    return-object p0
.end method

.method public printAll()V
    .registers 8

    .line 6673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "printAll() : sigHash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->sigHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInformation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6674
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->packageInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 6676
    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 6678
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6682
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 6683
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "printAll() :   :: pkg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_7f
    return-void
.end method

.method public retValue(Ljava/lang/String;)I
    .registers 3

    const/4 p0, 0x3

    if-eqz p1, :cond_2b

    const-string v0, "block"

    .line 6654
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const-string v0, "except"

    .line 6656
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return p0

    :cond_16
    const-string/jumbo v0, "warning"

    .line 6658
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p0, 0x4

    return p0

    :cond_21
    const-string/jumbo v0, "warning_dev"

    .line 6660
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p0, 0x5

    :cond_2b
    return p0
.end method

.method public setSig(Ljava/lang/String;)V
    .registers 2

    .line 6690
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;->sigHash:Ljava/lang/String;

    return-void
.end method
