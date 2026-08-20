.class public Lcom/samsung/android/mcf/continuity/impl/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/mcf/continuity/impl/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/a;-><init>(Lcom/samsung/android/mcf/continuity/impl/a$a;)V

    sput-object v0, Lcom/samsung/android/mcf/continuity/impl/a$b;->a:Lcom/samsung/android/mcf/continuity/impl/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/mcf/continuity/impl/a;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/a$b;->a:Lcom/samsung/android/mcf/continuity/impl/a;

    return-object v0
.end method
