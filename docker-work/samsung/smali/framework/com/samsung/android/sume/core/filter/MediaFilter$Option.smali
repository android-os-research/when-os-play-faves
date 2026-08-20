.class public Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.super Lcom/samsung/android/sume/core/types/OptionBase;
.source "MediaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/MediaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter$Option;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->TAG:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 2

    .line 159
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->remove(I)Ljava/lang/Object;

    .line 160
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asOutputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 2

    .line 168
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->remove(I)Ljava/lang/Object;

    .line 169
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPad()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public blacklist getSplitType()Lcom/samsung/android/sume/core/types/SplitType;
    .registers 2

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method public blacklist getUseExternalBufferComposer()Z
    .registers 3

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowPartialConnection()Z
    .registers 3

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isBatchIO()Z
    .registers 3

    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isIgnorableFilter()Z
    .registers 3

    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isInputOption()Z
    .registers 3

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isInputWithEvaluationValue()Z
    .registers 3

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isKeepFilterDatatype()Z
    .registers 3

    .line 127
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isOutputOption()Z
    .registers 3

    .line 173
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isWaitToReceiveAll()Z
    .registers 3

    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 2
    .param p1, "option"    # I

    .line 185
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 186
    return-object p0
.end method

.method public blacklist set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 3
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 190
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/types/OptionBase;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 191
    return-object p0
.end method

.method public bridge synthetic blacklist set(I)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 3

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowPartialConnection(Z)V
    .registers 4
    .param p1, "allowPartialConnection"    # Z

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 116
    return-void
.end method

.method public blacklist setBatchIO(Z)V
    .registers 4
    .param p1, "batchIO"    # Z

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 140
    return-void
.end method

.method public blacklist setFilterIgnorable(Z)V
    .registers 4
    .param p1, "ignorable"    # Z

    .line 181
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 182
    return-void
.end method

.method public blacklist setInputWithEvaluationValue(Z)V
    .registers 4
    .param p1, "inputWithEvaluationValue"    # Z

    .line 155
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 156
    return-void
.end method

.method public blacklist setKeepFilterDatatype(Z)V
    .registers 4
    .param p1, "keepFilterDatatype"    # Z

    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 132
    return-void
.end method

.method public blacklist setPad(Landroid/util/Pair;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/types/PadType;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 108
    return-void
.end method

.method public blacklist setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)V
    .registers 3
    .param p1, "splitType"    # Lcom/samsung/android/sume/core/types/SplitType;

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 100
    return-void
.end method

.method public blacklist setUseExternalBufferComposer(Z)V
    .registers 4
    .param p1, "useExternalBufferComposer"    # Z

    .line 123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 124
    return-void
.end method

.method public blacklist setWaitToReceiveAll(Z)V
    .registers 4
    .param p1, "waitToReceiveAll"    # Z

    .line 147
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 148
    return-void
.end method
