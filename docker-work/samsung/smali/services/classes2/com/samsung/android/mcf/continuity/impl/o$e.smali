.class public Lcom/samsung/android/mcf/continuity/impl/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/e$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/o;->d()Lcom/samsung/android/mcf/continuity/impl/e$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/o;


# direct methods
.method public static synthetic $r8$lambda$FJmh51f507MmVOjKpmtqr8rNEeg(Lcom/samsung/android/mcf/continuity/impl/o$e;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VJk3Du-rzaYbYEcSzqQWUVM4tLY(Lcom/samsung/android/mcf/continuity/impl/o$e;ZLjava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/o$e;->a(ZLjava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(ZLjava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/o;->d(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    const/16 p1, 0x3f4

    invoke-static {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;I)V

    :goto_1d
    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/o$e;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Z)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/o$e;ZLjava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;[B)V

    return-void
.end method
