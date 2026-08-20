.class public Lcom/android/server/pm/PackageProperty;
.super Ljava/lang/Object;
.source "PackageProperty.java"


# instance fields
.field public mActivityProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mApplicationProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mProviderProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mReceiverProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mServiceProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 140
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    .line 142
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_1c

    .line 146
    :cond_18
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageProperty;->addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p1

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-object p1
.end method

.method public static addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 155
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    if-nez p1, :cond_10

    .line 159
    new-instance p1, Landroid/util/ArrayMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 160
    :cond_10
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    .line 163
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_3c

    .line 167
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 168
    invoke-virtual {p1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_3c
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_50

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_54
    return-object p1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/content/pm/PackageManager$Property;"
        }
    .end annotation

    .line 240
    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p3, 0x0

    if-nez p0, :cond_a

    return-object p3

    .line 244
    :cond_a
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_13

    return-object p3

    .line 248
    :cond_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_2f

    .line 249
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager$Property;

    .line 250
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    :cond_2c
    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    :cond_2f
    return-object p3
.end method

.method public static removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 187
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-eqz p1, :cond_21

    if-ge v1, v0, :cond_21

    .line 189
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 190
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1e

    .line 193
    :cond_1a
    invoke-static {v2, p1}, Lcom/android/server/pm/PackageProperty;->removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p1

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-object p1
.end method

.method public static removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 205
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 206
    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    .line 208
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_29

    goto :goto_c

    .line 216
    :cond_29
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_32

    goto :goto_c

    .line 221
    :cond_32
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3e

    .line 225
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 228
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 231
    :cond_48
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-nez p0, :cond_4f

    return-object v0

    :cond_4f
    return-object p1
.end method


# virtual methods
.method public addAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    .line 117
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProperties()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 118
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 119
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 120
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 121
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    return-void
.end method

.method public final getApplicationProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 4

    .line 277
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    goto :goto_d

    :cond_c
    move-object p0, v0

    :goto_d
    if-nez p0, :cond_10

    return-object v0

    .line 281
    :cond_10
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_19

    return-object v0

    :cond_19
    const/4 p1, 0x0

    .line 285
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    return-object p0
.end method

.method public final getComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 6

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 261
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_14

    .line 263
    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    if-eqz v1, :cond_14

    .line 264
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    :cond_14
    if-nez v0, :cond_1e

    .line 266
    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1e

    .line 267
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    :cond_1e
    if-nez v0, :cond_28

    .line 269
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    if-eqz p0, :cond_28

    .line 270
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    :cond_28
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 4

    if-nez p3, :cond_7

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageProperty;->getApplicationProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    return-object p0

    .line 68
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageProperty;->getComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    return-object p0
.end method

.method public queryProperty(Ljava/lang/String;ILjava/util/function/Predicate;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_7

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    goto :goto_20

    :cond_7
    const/4 v1, 0x1

    if-ne p2, v1, :cond_d

    .line 83
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    goto :goto_20

    :cond_d
    const/4 v1, 0x4

    if-ne p2, v1, :cond_13

    .line 85
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    goto :goto_20

    :cond_13
    const/4 v1, 0x2

    if-ne p2, v1, :cond_19

    .line 87
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    goto :goto_20

    :cond_19
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1f

    .line 89
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    goto :goto_20

    :cond_1f
    move-object p0, v0

    :goto_20
    if-nez p0, :cond_23

    return-object v0

    .line 97
    :cond_23
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_2c

    return-object v0

    .line 101
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 103
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 104
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_3c
    if-ge v0, p1, :cond_57

    .line 106
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-interface {p3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_54

    .line 110
    :cond_4b
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_57
    return-object p2
.end method

.method public removeAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    .line 126
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProperties()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 127
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 128
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 129
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 130
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    return-void
.end method
