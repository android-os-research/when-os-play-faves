.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
.super Ljava/lang/Object;
.source "PackageFeatureUserChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageFeature"


# instance fields
.field public final mChangeValuesAsUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface<",
            "TValue;>;"
        }
    .end annotation
.end field

.field public final mFileName:Ljava/lang/String;

.field public final mFilePath:Ljava/lang/String;

.field public final mIdentityFlag:I

.field public final mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFilePath:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mFileName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 85
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    if-eqz p5, :cond_1e

    .line 87
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->getInstance()Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 88
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->addUserChange(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    :goto_21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 153
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_1b

    .line 156
    :cond_34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 160
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v7, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    if-eqz v7, :cond_9a

    if-eqz v4, :cond_9a

    .line 163
    invoke-interface {v7, v2, v5, v4}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;->valueToString(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_9a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    :cond_a5
    return-void
.end method

.method public getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "TValue;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1c

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public getIdentityFlag()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    return p0
.end method

.method public getUserIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getValue(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TValue;"
        }
    .end annotation

    if-nez p2, :cond_1f

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getValue, packageName is null. caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageFeature"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TValue;)TValue;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string v2, "PackageFeature"

    if-nez p2, :cond_20

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "putValue, packageName is null. caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_20
    if-nez p3, :cond_3c

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "putValue, value is null. caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 130
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->requestToSave(I)V

    return-object p2
.end method

.method public requestToSave(I)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    if-eqz v0, :cond_9

    .line 137
    iget p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->requestToSave(II)V

    :cond_9
    return-void
.end method

.method public reset(I)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mPersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    if-eqz v0, :cond_10

    .line 144
    iget p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->requestToReset(II)V

    :cond_10
    return-void
.end method
