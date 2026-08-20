.class public Lcom/samsung/android/mcf/continuity/impl/o$a;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/o;->j()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/o;


# direct methods
.method public static synthetic $r8$lambda$3EJs5zOKbZ38ZVVyN7hgJ3Tqnk0(Lcom/samsung/android/mcf/continuity/impl/o$a;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4mvJIHNLVuS1foAhXViGlnwNvCc(Lcom/samsung/android/mcf/continuity/impl/o$a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$a;->a(I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$a;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;-><init>()V

    return-void
.end method

.method private synthetic a(I)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$a;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;I)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$a;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged(I)V
    .registers 3

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/o$a;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWifiInfoUpdated(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityWifiInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/o$a;Ljava/util/List;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
