.class public final Lorg/apache/commons/lang3/compare/ObjectToStringComparator;
.super Ljava/lang/Object;
.source "ObjectToStringComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

    invoke-direct {v0}, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;->INSTANCE:Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return p0

    :cond_6
    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    :cond_a
    const/4 v1, -0x1

    if-nez p2, :cond_e

    return v1

    .line 55
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1b

    if-nez p2, :cond_1b

    return p0

    :cond_1b
    if-nez p1, :cond_1e

    return v0

    :cond_1e
    if-nez p2, :cond_21

    return v1

    .line 67
    :cond_21
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
