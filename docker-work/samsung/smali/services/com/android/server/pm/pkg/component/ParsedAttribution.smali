.class public interface abstract Lcom/android/server/pm/pkg/component/ParsedAttribution;
.super Ljava/lang/Object;
.source "ParsedAttribution.java"


# static fields
.field public static final MAX_ATTRIBUTION_TAG_LEN:I = 0x32


# virtual methods
.method public abstract getInheritFrom()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabel()I
.end method

.method public abstract getTag()Ljava/lang/String;
.end method
