.class public Lcom/samsung/android/mcf/continuity/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/mcf/continuity/impl/c;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/c;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Lcom/samsung/android/mcf/continuity/impl/d;
    .registers 2
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/d;-><init>(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)V

    return-object v0
.end method

.method public static a(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;Lcom/samsung/android/mcf/continuity/impl/s;)Lcom/samsung/android/mcf/continuity/impl/g;
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/g;-><init>(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;Lcom/samsung/android/mcf/continuity/impl/s;)V

    return-object v0
.end method

.method public static a(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)Lcom/samsung/android/mcf/continuity/impl/o;
    .registers 3
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;-><init>(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)V

    return-object v0
.end method

.method public static a(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/p;
    .registers 2
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/p;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public static a(Lcom/samsung/android/mcf/continuity/impl/r;Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/q;
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/q;-><init>(Lcom/samsung/android/mcf/continuity/impl/r;Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public static b(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/r;
    .registers 2
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/r;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/r;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public static b(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)Lcom/samsung/android/mcf/continuity/impl/s;
    .registers 3
    .param p0    # Lcom/samsung/android/mcf/continuity/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/s;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/s;-><init>(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)V

    return-object v0
.end method
