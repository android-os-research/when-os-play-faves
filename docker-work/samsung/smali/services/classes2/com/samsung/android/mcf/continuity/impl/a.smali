.class public Lcom/samsung/android/mcf/continuity/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/a$b;
    }
.end annotation


# instance fields
.field public volatile a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/a;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/a$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/a;-><init>()V

    return-void
.end method

.method public static b()Lcom/samsung/android/mcf/continuity/impl/a;
    .registers 1

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a$b;->a()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/a;->a:I

    return p0
.end method

.method public a(I)V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/a;->a:I

    return-void
.end method
