.class public Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;
.super Ljava/lang/Object;
.source "RestrictionPolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplyingAdmins"
.end annotation


# instance fields
.field public admins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;)V

    return-void
.end method


# virtual methods
.method public dump(IJ)Ljava/lang/String;
    .registers 7

    .line 529
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_f

    return-object v1

    .line 530
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    return-object v1

    .line 531
    :cond_26
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(I)V
    .registers 3

    .line 481
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public load(IILjava/lang/Long;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p4, v0, :cond_13

    .line 489
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-static {v0, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->-$$Nest$misDefaultValueZero(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->put(ILjava/lang/Long;Ljava/lang/Integer;)V

    goto :goto_24

    :cond_13
    if-nez p4, :cond_24

    .line 491
    iget-object p4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-static {p4, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->-$$Nest$misDefaultValueOne(Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;Ljava/lang/Long;)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 492
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->put(ILjava/lang/Long;Ljava/lang/Integer;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final put(ILjava/lang/Long;Ljava/lang/Integer;)V
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 507
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    goto :goto_3a

    .line 509
    :cond_25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 510
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 512
    :goto_3a
    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(I)V
    .registers 2

    .line 485
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(IJLjava/lang/Integer;)V
    .registers 7

    .line 516
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No need to update admin cache for mask : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 518
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    .line 517
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 521
    :cond_46
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 522
    invoke-interface {v0, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 523
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_78

    .line 524
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    return-void
.end method

.method public update(ZIJI)V
    .registers 6

    if-eqz p1, :cond_e

    .line 498
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->put(ILjava/lang/Long;Ljava/lang/Integer;)V

    goto :goto_15

    .line 500
    :cond_e
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->remove(IJLjava/lang/Integer;)V

    :goto_15
    return-void
.end method
