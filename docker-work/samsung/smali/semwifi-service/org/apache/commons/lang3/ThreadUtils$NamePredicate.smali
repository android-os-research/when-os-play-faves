.class public Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamePredicate"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The name must not be null"

    .line 308
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iput-object p1, p0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 319
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public test(Ljava/lang/ThreadGroup;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 314
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
