.class public Lcom/android/server/pm/parsing/ParsedComponentStateUtils;
.super Ljava/lang/Object;
.source "ParsedComponentStateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNonLocalizedLabelAndIcon(Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIcon()I

    move-result v1

    if-nez p1, :cond_c

    const/4 p0, 0x0

    goto :goto_18

    .line 45
    :cond_c
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    .line 46
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    move-result-object p0

    :goto_18
    if-eqz p0, :cond_2b

    .line 48
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_21

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 51
    :cond_21
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p0, :cond_2b

    .line 52
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    :cond_2b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
