.class public Lcom/samsung/android/mcf/continuity/impl/p$b;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/p;->sendFile(Ljava/lang/String;[BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/p;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p$b;->b:Lcom/samsung/android/mcf/continuity/impl/p;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/p$b;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method


# virtual methods
.method public onFileStatusUpdated(ID)V
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p$b;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/p$b$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
