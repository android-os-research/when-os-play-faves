.class public Lorg/junit/rules/TemporaryFolder$Builder;
.super Ljava/lang/Object;
.source "TemporaryFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/TemporaryFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private assureDeletion:Z

.field private parentFolder:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetassureDeletion(Lorg/junit/rules/TemporaryFolder$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->assureDeletion:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentFolder(Lorg/junit/rules/TemporaryFolder$Builder;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->parentFolder:Ljava/io/File;

    return-object p0
.end method

.method protected constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assureDeletion()Lorg/junit/rules/TemporaryFolder$Builder;
    .registers 2

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder$Builder;->assureDeletion:Z

    .line 123
    return-object p0
.end method

.method public build()Lorg/junit/rules/TemporaryFolder;
    .registers 2

    .line 130
    new-instance v0, Lorg/junit/rules/TemporaryFolder;

    invoke-direct {v0, p0}, Lorg/junit/rules/TemporaryFolder;-><init>(Lorg/junit/rules/TemporaryFolder$Builder;)V

    return-object v0
.end method

.method public parentFolder(Ljava/io/File;)Lorg/junit/rules/TemporaryFolder$Builder;
    .registers 2
    .param p1, "parentFolder"    # Ljava/io/File;

    .line 110
    iput-object p1, p0, Lorg/junit/rules/TemporaryFolder$Builder;->parentFolder:Ljava/io/File;

    .line 111
    return-object p0
.end method
