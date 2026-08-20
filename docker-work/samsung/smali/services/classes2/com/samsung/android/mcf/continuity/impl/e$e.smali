.class public Lcom/samsung/android/mcf/continuity/impl/e$e;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/e;->a(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/impl/e;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$e;->c:Lcom/samsung/android/mcf/continuity/impl/e;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$e;->a:I

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$e;->b:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileStatusUpdated(ID)V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$e;->c:Lcom/samsung/android/mcf/continuity/impl/e;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$e;->a:I

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/e$e;->b:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/e;->b(Lcom/samsung/android/mcf/continuity/impl/e;IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-void
.end method
