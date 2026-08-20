.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    }
.end annotation


# instance fields
.field public final mSessionsByUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$zUa-X2p_WusEh1EHfQBUwz0CV0Q(Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->lambda$remove$0(Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic lambda$remove$0(Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Z
    .registers 2

    .line 82
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->-$$Nest$fgetmSessionId(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 70
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_12
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_28

    .line 127
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 129
    invoke-virtual {v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    goto :goto_15

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return-void
.end method

.method public get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .registers 5

    .line 48
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return-object p1

    .line 52
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 53
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->-$$Nest$fgetmSessionId(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    :cond_27
    return-object p1
.end method

.method public remove(I)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_b

    return-void

    .line 97
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 98
    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    goto :goto_f

    .line 100
    :cond_1f
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 82
    :cond_9
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public size()I
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 112
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v2
.end method
