.class public Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;
.super Ljava/lang/Object;
.source "ParsingUtils.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/parsing/ParsingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringPairListParceler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4

    .line 134
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method public parcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 p0, -0x1

    .line 141
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 145
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 146
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p0, :cond_28

    .line 149
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 150
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p2, v1, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_28
    return-void
.end method

.method public bridge synthetic unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public unparcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const/4 v0, 0x0

    if-nez p0, :cond_12

    .line 163
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 166
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_17
    if-ge v0, p0, :cond_35

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    .line 169
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 168
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_35
    return-object v1
.end method
