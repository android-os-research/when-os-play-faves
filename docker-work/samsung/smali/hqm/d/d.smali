.class public Ld/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ld/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Ld/d;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
