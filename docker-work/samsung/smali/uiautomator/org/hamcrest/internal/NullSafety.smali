.class public Lorg/hamcrest/internal/NullSafety;
.super Ljava/lang/Object;
.source "NullSafety.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nullSafe([Lorg/hamcrest/Matcher;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;)",
            "Ljava/util/List<",
            "Lorg/hamcrest/Matcher<",
            "-TE;>;>;"
        }
    .end annotation

    .line 12
    .local p0, "itemMatchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .local v0, "matchers":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-TE;>;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    .line 14
    .local v3, "itemMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TE;>;"
    if-nez v3, :cond_13

    invoke-static {}, Lorg/hamcrest/core/IsNull;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v4

    goto :goto_14

    :cond_13
    move-object v4, v3

    :goto_14
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .end local v3    # "itemMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 16
    :cond_1a
    return-object v0
.end method
