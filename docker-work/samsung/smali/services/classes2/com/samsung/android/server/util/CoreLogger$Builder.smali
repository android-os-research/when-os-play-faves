.class public Lcom/samsung/android/server/util/CoreLogger$Builder;
.super Ljava/lang/Object;
.source "CoreLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/util/CoreLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mBufferSize:I

.field public mDumpTitle:Ljava/lang/String;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/samsung/android/server/util/CoreLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/util/CoreLogger$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/util/CoreLogger$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/util/CoreLogger;
    .registers 5

    .line 48
    new-instance v0, Lcom/samsung/android/server/util/CoreLogger;

    iget-object v1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/util/CoreLogger-IA;)V

    return-object v0
.end method

.method public setBufferSize(I)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .registers 2

    .line 62
    iput p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    return-object p0
.end method

.method public setDumpTitle(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
